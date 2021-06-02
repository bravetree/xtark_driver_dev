#include "../include/xtark_driver/xtark_driver.h"

XtarkDriver::XtarkDriver():msg_seq_(0),start_flag_(true),cur_left_(0),cur_right_(0),state_(waitingForHead1){}
XtarkDriver::~XtarkDriver() //析构函数，释放io端口设备
{
    boost::mutex::scoped_lock look(mutex_);
    l_wheel_mult_ = 0;
    r_wheel_mult_ = 0;
    recv_flag_ = false;
    if(sp_)
    {
        sp_->cancel();
        sp_->close();
        sp_.reset();
    }
    io_service_.stop();
    io_service_.reset();
}

//动态参数配置回调函数，设置PID参数，动态参数回调详见roswiki:dynamic_reconfig
void XtarkDriver::dynamic_reconfig_callback(xtark_driver::PID_reconfigConfig &config,uint32_t level)
{
	ROS_INFO("Set PID P:[%d], I:[%d], D:[%d]",config.Kp,config.Ki,config.Kd);
    uint8_t pid_set[11];
    pid_set[0] = head1;
    pid_set[1] = head2;
    pid_set[2] = 0x0b;
    pid_set[3] = sendType_pid;
    pid_set[4] = (config.Kp >> 8) & 0xff;
    pid_set[5] = config.Kp & 0xff;
    pid_set[6] = (config.Ki >> 8) & 0xff;
    pid_set[7] = config.Ki & 0xff;
    pid_set[8] = (config.Kd >> 8) & 0xff;
    pid_set[9] = config.Kd & 0xff;
    check_sum(pid_set,10,pid_set[10]);
    boost::asio::write(*sp_.get(),boost::asio::buffer(pid_set,11),ec_);
	
}
void XtarkDriver::loop() //主循环函数，参数等获取初始化值，并启动控制线程
{
    uint8_t stop_buf[13];
    ros::NodeHandle nh_;
    ros::NodeHandle nh_p_("~");

    //获取各运行参数初始化值
    nh_p_.param<std::string>("port_name",port_name_,std::string("/dev/ttyAMA0"));
    nh_p_.param<std::string>("odom_frame",odom_frame_,std::string("odom"));
    nh_p_.param<std::string>("base_frame",base_frame_,std::string("base_footprint"));
    nh_p_.param<std::string>("imu_frame",imu_frame_,std::string("base_imu_link"));
    nh_p_.param<std::string>("lidar_frame",lidar_frame_,std::string("laser"));
    nh_p_.param<std::string>("version",code_version_,std::string("V1.0.0"));

    nh_p_.param<int>("baud_rate",baud_rate_,115200);
    nh_p_.param<int>("control_rate",control_rate_,20);

    nh_p_.param<double>("pid_rate",pid_rate_,50);    
    nh_p_.param<double>("start_rotation_limit_w",start_rotation_limit_w_,0.4);
    nh_p_.param<int>("encoder_min",encoder_min_,-32768);
    nh_p_.param<int>("encoder_max",encoder_max_,32767);
    nh_p_.param<double>("encoder_low_wrap",encoder_low_wrap_,(encoder_max_-encoder_min_)*0.3 + encoder_min_);
    nh_p_.param<double>("encoder_high_wrap",encoder_high_wrap_,(encoder_max_-encoder_min_)*0.7 + encoder_min_);
    nh_p_.param<bool>("publish_odom_transform",publish_odom_transform_,true);
    nh_p_.param<int>("Kp",kp_,300);
    nh_p_.param<int>("Ki",ki_,0);
    nh_p_.param<int>("Kd",kd_,200);
    
    nh_p_.param<double>("encoder_resolution",encoder_resolution_mec_,1600);
    nh_p_.param<double>("wheel_diameter",wheel_diameter_mec_,0.15);
    nh_p_.param<double>("wheel_a_mec",wheel_a_mec_,0.15);
    nh_p_.param<double>("wheel_b_mec",wheel_b_mec_,0.15);
    nh_p_.param<double>("gear_reduction",gear_reduction_mec_,1.0);
    nh_p_.param<double>("ax_cm_k",ax_cm_k_,0.08);
    nh_p_.param<double>("lidar_offset_x",lidar_offset_x_,0.1);
    nh_p_.param<double>("lidar_offset_y",lidar_offset_y_,0.0);
    nh_p_.param<double>("lidar_offset_z",lidar_offset_z_,0.1);
    nh_p_.param<double>("lidar_offset_roll",lidar_offset_roll_,0.0);
    nh_p_.param<double>("lidar_offset_pitch",lidar_offset_pitch_,0.0);
    nh_p_.param<double>("lidar_offset_yaw",lidar_offset_yaw_,3.1415926);
    nh_p_.param<double>("linear_correction_factor",linear_correction_factor_,1.0);
    nh_p_.param<double>("angular_correction_factor",angular_correction_factor_,1.0);
    encoder_resolution_mec_ = encoder_resolution_mec_/linear_correction_factor_;
    wheel_a_mec_ = wheel_a_mec_/angular_correction_factor_;

    
    ticks_per_meter_omni_ = encoder_resolution_mec_ * gear_reduction_mec_/(wheel_diameter_mec_ * M_PI);

    //初始化机器人硬件端口及ros发布与订阅话题
    if(initRobot())
    {
       /* odom_pub_    = nh_.advertise<nav_msgs::Odometry>("/odom",10);
        battery_pub_ = nh_.advertise<std_msgs::Float32>("/voltage",1);
        imu_pub_     = nh_.advertise<sensor_msgs::Imu>("/imu_raw",10);
        sonar_pub_   = nh_.advertise<sensor_msgs::Range>("/sonar",10);
        avel_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/avel",10);
        bvel_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/bvel",10);
        cvel_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/cvel",10);
        dvel_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/dvel",10);
        aset_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/aset",10);
        bset_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/bset",10);
        cset_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/cset",10);
        dset_pub_    = nh_.advertise<std_msgs::Int32>("/xtark/dset",10);*/
        
	odom_pub_    = nh_.advertise<nav_msgs::Odometry>("odom",10);
        battery_pub_ = nh_.advertise<std_msgs::Float32>("voltage",1);
        imu_pub_     = nh_.advertise<sensor_msgs::Imu>("imu_raw",10);
        sonar_pub_   = nh_.advertise<sensor_msgs::Range>("sonar",10);
        avel_pub_    = nh_.advertise<std_msgs::Int32>("xtark/avel",10);
        bvel_pub_    = nh_.advertise<std_msgs::Int32>("xtark/bvel",10);
        cvel_pub_    = nh_.advertise<std_msgs::Int32>("xtark/cvel",10);
        dvel_pub_    = nh_.advertise<std_msgs::Int32>("xtark/dvel",10);
        aset_pub_    = nh_.advertise<std_msgs::Int32>("xtark/aset",10);
        bset_pub_    = nh_.advertise<std_msgs::Int32>("xtark/bset",10);
        cset_pub_    = nh_.advertise<std_msgs::Int32>("xtark/cset",10);
        dset_pub_    = nh_.advertise<std_msgs::Int32>("xtark/dset",10);
	
	imu_calib_data_.angular_velocity.x = 0;
	imu_calib_data_.angular_velocity.y = 0;
	imu_calib_data_.angular_velocity.z = 0;
	imu_calib_data_.linear_acceleration.x=0;
	imu_calib_data_.linear_acceleration.y=0;
	imu_calib_data_.linear_acceleration.z=9.8;

        //cmd_sub_     = nh_.subscribe<geometry_msgs::Twist>("/cmd_vel",10,&XtarkDriver::cmd_vel_callback,this);
	//imu_calib_sub_ = nh_.subscribe<sensor_msgs::Imu>("/imu",10,&XtarkDriver::calib_imu_callback,this); 
        cmd_sub_     = nh_.subscribe<geometry_msgs::Twist>("cmd_vel",10,&XtarkDriver::cmd_vel_callback,this);
	imu_calib_sub_ = nh_.subscribe<sensor_msgs::Imu>("imu",10,&XtarkDriver::calib_imu_callback,this); 

	//控制指令发布任务循环定时器
        ros::Timer send_speed_timer = nh_.createTimer(ros::Duration(1.0/control_rate_),&XtarkDriver::send_speed_callback,this);

	//串口接收线程
        boost::thread recv_thread(boost::bind(&XtarkDriver::recv_msg,this));

	    dynamic_reconfigure::Server<xtark_driver::PID_reconfigConfig> reconfig_server;
	    dynamic_reconfigure::Server<xtark_driver::PID_reconfigConfig>::CallbackType f;

	    f = boost::bind(&XtarkDriver::dynamic_reconfig_callback,this,_1,_2);
	    reconfig_server.setCallback(f);

        ros::spin(); //ros话题回调死循环
        
    	stop_buf[0] = head1;
    	stop_buf[1] = head2;
    	stop_buf[2] = 0x0d;
    	stop_buf[3] = sendType_wheel_speed;
    	stop_buf[4] = 0x00;
    	stop_buf[5] = 0x00;
    	stop_buf[6] = 0x00;
    	stop_buf[7] = 0x00;
    	stop_buf[8] = 0x00;
    	stop_buf[9] = 0x00;
    	stop_buf[10] = 0x00;
    	stop_buf[11] = 0x00;
    	check_sum(stop_buf,12,stop_buf[12]);

    	boost::asio::write(*sp_.get(),boost::asio::buffer(stop_buf,13),ec_);
        return ;
    }

}
bool XtarkDriver::initRobot() //初始化硬件串口及初始化OpenCRP控制板PID参数
{
    if(sp_)
    {
        ROS_ERROR("The SerialPort is already opened!");
        return false;
    }
     sp_ = serialp_ptr(new boost::asio::serial_port(io_service_));
     sp_->open(port_name_,ec_);
     if(ec_)
     {
        ROS_ERROR_STREAM("error : port_->open() failed...port_name=" << port_name_ << ", e=" << ec_.message().c_str());
        return false;
     }
    sp_->set_option(boost::asio::serial_port_base::baud_rate(baud_rate_));
    sp_->set_option(boost::asio::serial_port_base::character_size(8));
    sp_->set_option(boost::asio::serial_port_base::stop_bits(boost::asio::serial_port_base::stop_bits::one));
    sp_->set_option(boost::asio::serial_port_base::parity(boost::asio::serial_port_base::parity::none));
    sp_->set_option(boost::asio::serial_port_base::flow_control(boost::asio::serial_port_base::flow_control::none));
    
    short p_send_ = (short)kp_;
    short i_send_ = (short)ki_;
    short d_send_ = (short)kd_;
    
    uint8_t data[11];
    data[0] = head1;
    data[1] = head2;
    data[2] = 0x0b;
    data[3] = sendType_pid;
    data[4] = (p_send_ >> 8) & 0xff;
    data[5] = p_send_ & 0xff;
    data[6] = (i_send_ >> 8) & 0xff;
    data[7] = i_send_ & 0xff;
    data[8] = (d_send_ >> 8) & 0xff;
    data[9] = d_send_ & 0xff;
    check_sum(data,10,data[10]);
    boost::asio::write(*sp_.get(),boost::asio::buffer(data,11),ec_);

    return true;
}

//IMU校准话题回调函数
void XtarkDriver::calib_imu_callback(const sensor_msgs::Imu::ConstPtr& msg)
{
	imu_calib_data_.header = msg->header;
	imu_calib_data_.angular_velocity = msg->angular_velocity;
	imu_calib_data_.linear_acceleration = msg->linear_acceleration;
}

//控制指令定时器回调函数，包含麦克纳姆运动模型逆解
void XtarkDriver::send_speed_callback(const ros::TimerEvent&)
{
    double left, right;
    double linear_speed, angular_speed;
    short left_des, right_des;

    /*********Omni**********/
    double a_v, b_v, c_v, d_v;
    double x_speed, y_speed, w_speed;
    short a_des, b_des, c_des,d_des;


    if((ros::Time::now() - last_twist_time_).toSec() <= 1.0)
    {
        x_speed = current_twist_.linear.x;
        y_speed = current_twist_.linear.y;
        w_speed = current_twist_.angular.z;
    }
    else
    {
        x_speed = 0;
        y_speed = 0;
        w_speed = 0;
    }

    if((ros::Time::now() - now_).toSec() >=1)
    {
        ROS_WARN_THROTTLE(1,"Didn't received odom data,Please check your connection!");
    }
    if((x_speed == 0) && (y_speed == 0))
    {
        a_v = -(wheel_a_mec_ + wheel_b_mec_) * w_speed;
        b_v = (wheel_a_mec_ + wheel_b_mec_) * w_speed;
        c_v = -(wheel_a_mec_ + wheel_b_mec_) * w_speed;
        d_v = (wheel_a_mec_ + wheel_b_mec_) * w_speed;
    }
    else
    {
        //a_v = y_speed - x_speed + (wheel_a_mec_+wheel_b_mec_)*w_speed;
        //b_v = -y_speed - x_speed + (wheel_a_mec_+wheel_b_mec_)*w_speed;
        //c_v = -y_speed + x_speed + (wheel_a_mec_+wheel_b_mec_)*w_speed;
        //d_v = y_speed + x_speed + (wheel_a_mec_+wheel_b_mec_)*w_speed;
        a_v = -y_speed + x_speed - (wheel_a_mec_+wheel_b_mec_)*w_speed;
        b_v = y_speed + x_speed + (wheel_a_mec_+wheel_b_mec_)*w_speed;
        c_v = y_speed + x_speed - (wheel_a_mec_+wheel_b_mec_)*w_speed;
        d_v = -y_speed + x_speed + (wheel_a_mec_+wheel_b_mec_)*w_speed;
    }
    a_des = static_cast<short>(a_v * ticks_per_meter_omni_ / pid_rate_);
    b_des = static_cast<short>(b_v * ticks_per_meter_omni_ / pid_rate_);
    c_des = static_cast<short>(c_v * ticks_per_meter_omni_ / pid_rate_);
    d_des = static_cast<short>(d_v * ticks_per_meter_omni_ / pid_rate_);

    aset_pub_data_.data = a_des;
    bset_pub_data_.data = b_des;
    cset_pub_data_.data = c_des;
    dset_pub_data_.data = d_des;

    aset_pub_.publish(aset_pub_data_);
    bset_pub_.publish(bset_pub_data_);
    cset_pub_.publish(cset_pub_data_);
    dset_pub_.publish(dset_pub_data_);

     
    uint8_t data[13];
    data[0] = head1;
    data[1] = head2;
    data[2] = 0x0d;
    data[3] = sendType_wheel_speed;
    data[4] = (a_des >> 8) & 0xff;
    data[5] = a_des & 0xff;
    data[6] = (b_des >> 8) & 0xff;
    data[7] = b_des & 0xff;
    data[8] = (c_des >> 8) & 0xff;
    data[9] = c_des;
    data[10] = (d_des>>8) & 0xff;
    data[11] = d_des;
    check_sum(data,12,data[12]);

    boost::asio::write(*sp_.get(),boost::asio::buffer(data,13),ec_);

    ROS_DEBUG_STREAM("send speed -> left: " << left_des <<"; right: " << right_des);

}

//cmd_vel话题回调函数
void XtarkDriver::cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
    try
    {
        cmd_vel_mutex_.lock();
        last_twist_time_ = ros::Time::now();
        current_twist_ = *msg.get();
        cmd_vel_mutex_.unlock();
    }
    catch(...)
    {
        cmd_vel_mutex_.unlock();
    }
}

//校验和计算辅助函数
void XtarkDriver::check_sum(uint8_t* data, size_t len, uint8_t& dest)
{
    dest = 0x00;
    for(int i=0;i<len;i++)
    {
        dest += *(data + i);
    }
}

//编码器溢出检测辅助函数
void XtarkDriver::calc_encoder(int &cur, int &recv, int &delta)
{
    if(recv > cur)
    {
        delta = (recv - cur) < (cur - recv + 65535) ? (recv - cur) : (recv - cur - 65535);

    }
    else
    {
        delta = (cur - recv) < (recv - cur + 65535) ? (recv - cur) : (recv - cur + 65535);
    }
    cur = recv;
    
}

//串口接收函数
void XtarkDriver::recv_msg()
{
    uint8_t payload_size, check_num, buffer_data[255],payload_type;
    state_ = waitingForHead1;
    recv_flag_ = true;
    while(recv_flag_)
    {
        switch (state_)
        {
            case waitingForHead1:
                check_num = 0x00;
                boost::asio::read(*sp_.get(), boost::asio::buffer(&buffer_data[0], 1), ec_);
                state_ = buffer_data[0] == head1 ? waitingForHead2 : waitingForHead1;
                if(state_ == waitingForHead1)
                {
                    ROS_DEBUG_STREAM("recv head1 error : ->"<<(int)buffer_data[0]);
                }
                break;
            case waitingForHead2:
                boost::asio::read(*sp_.get(),boost::asio::buffer(&buffer_data[1],1),ec_);
                state_ = buffer_data[1] == head2 ? waitingForPayloadSize : waitingForHead1;
                if(state_ == waitingForHead1)
                {
                    ROS_DEBUG_STREAM("recv head2 error : ->"<<(int)buffer_data[1]);
                }
                break;
            case waitingForPayloadSize:
                boost::asio::read(*sp_.get(),boost::asio::buffer(&buffer_data[2],1),ec_);
                payload_size = buffer_data[2] - 4;
                state_ = waitingForPayload;
                break;
            case waitingForPayload:
                boost::asio::read(*sp_.get(),boost::asio::buffer(&buffer_data[3],payload_size),ec_);
                payload_type = buffer_data[3];
                state_ = waitingForCheckSum;
                break;
            case waitingForCheckSum:
                boost::asio::read(*sp_.get(),boost::asio::buffer(&buffer_data[3+payload_size],1),ec_);
                check_sum(buffer_data,3+payload_size,check_num);
                state_ = buffer_data[3+payload_size] == check_num ? handlePayload : waitingForHead1;
                if(state_ == waitingForHead1)
                {
                    ROS_DEBUG_STREAM("check sum error! recv is  : ->"<<(int)buffer_data[3+payload_size]<<"  calc is "<<check_num);
                }
                break;
            case handlePayload:
                distribute_data(payload_type, buffer_data);
                state_ = waitingForHead1;
                break;
        
            default:
                state_ = waitingForHead1;
                break;
        }
    }
}

//串口接收数据打包分发函数
void XtarkDriver::distribute_data(uint8_t msg_type, uint8_t* buffer_data)
{
    switch (msg_type)
    {
        case foundType_battery:
            handle_battery_data(buffer_data);
           break;
        case foundType_imu:
            handle_imu_data(buffer_data);
            break;
        case foundType_sonar:
            ROS_WARN("sonar handle didn't finish");
            //handle_sonar_data(buffer_data);
            break;
        case foundType_wheel_count:
            handle_speed_data(buffer_data);
            break;
        case foundType_loop_test:
            printf("Left is %d  ",(short)(buffer_data[4]*256+buffer_data[5]));
            printf("Right is %d  \n",(short)(buffer_data[6]*256+buffer_data[7]));
            break;
        default:
            //ROS_WARN("Undefined data type : %d", msg_type);
            break;
    }
}

//串口速度数据包解析函数
void XtarkDriver::handle_speed_data(uint8_t* buffer_data)
{
    rev_a_omni_ = -(buffer_data[4]*256+buffer_data[5]);
    rev_b_omni_ = (buffer_data[6]*256+buffer_data[7]);
    rev_c_omni_ = -(buffer_data[8]*256+buffer_data[9]);
    rev_d_omni_ = buffer_data[10]*256+buffer_data[11];

    avel_pub_data_.data = -(rev_a_omni_ - cur_a_omni_);
    bvel_pub_data_.data = rev_b_omni_ - cur_b_omni_;
    cvel_pub_data_.data = -(rev_c_omni_ - cur_c_omni_);
    dvel_pub_data_.data = rev_d_omni_ - cur_d_omni_;

    avel_pub_.publish(avel_pub_data_);
    bvel_pub_.publish(bvel_pub_data_);
    cvel_pub_.publish(cvel_pub_data_);
    dvel_pub_.publish(dvel_pub_data_);

    now_ = ros::Time::now();
    delta_time_ = (now_ - last_time_).toSec();
    if(start_flag_)
    {
        accumulation_y_ = 0.0;
        accumulation_x_ = 0.0;
        accumulation_th_ = 0.0;

        cur_a_omni_ = rev_a_omni_;
        cur_b_omni_ = rev_b_omni_;
        cur_c_omni_ = rev_c_omni_;
        cur_d_omni_ = rev_d_omni_;

        last_time_ = now_;
        start_flag_ = false;
        ROS_INFO("Xtark Robot is Successfuly connected!");
        ROS_INFO_STREAM ("The Code Version is "<<code_version_);
        
    }
    if(rev_a_omni_ < encoder_low_wrap_ && cur_a_omni_ > encoder_high_wrap_)
        wheel_mult_a_omni_++;
    else if(rev_a_omni_ > encoder_high_wrap_ && cur_a_omni_ < encoder_low_wrap_)
        wheel_mult_a_omni_--;
    else
        wheel_mult_a_omni_ = 0;

    if(rev_b_omni_ < encoder_low_wrap_ && cur_b_omni_ > encoder_high_wrap_)
        wheel_mult_b_omni_++;
    else if(rev_b_omni_ > encoder_high_wrap_ && cur_b_omni_ < encoder_low_wrap_)
        wheel_mult_b_omni_--;
    else
        wheel_mult_b_omni_ = 0;

    if(rev_c_omni_ < encoder_low_wrap_ && cur_c_omni_ > encoder_high_wrap_)
        wheel_mult_c_omni_++;
    else if(rev_c_omni_ > encoder_high_wrap_ && cur_c_omni_ < encoder_low_wrap_)
        wheel_mult_c_omni_--;
    else
        wheel_mult_c_omni_ = 0;

    if(rev_d_omni_ < encoder_low_wrap_ && cur_d_omni_ > encoder_high_wrap_)
        wheel_mult_d_omni_++;
    else if(rev_d_omni_ > encoder_high_wrap_ && cur_d_omni_ < encoder_low_wrap_)
        wheel_mult_d_omni_--;
    else
        wheel_mult_d_omni_ = 0;

    delta_a_omni_ = 1.0*(rev_a_omni_ + wheel_mult_a_omni_*(encoder_max_ - encoder_min_)-cur_a_omni_)/ticks_per_meter_omni_;
    delta_b_omni_ = 1.0*(rev_b_omni_ + wheel_mult_b_omni_*(encoder_max_ - encoder_min_)-cur_b_omni_)/ticks_per_meter_omni_;
    delta_c_omni_ = 1.0*(rev_c_omni_ + wheel_mult_c_omni_*(encoder_max_ - encoder_min_)-cur_c_omni_)/ticks_per_meter_omni_;
    delta_d_omni_ = 1.0*(rev_d_omni_ + wheel_mult_d_omni_*(encoder_max_ - encoder_min_)-cur_d_omni_)/ticks_per_meter_omni_;

    cur_a_omni_ = rev_a_omni_;
    cur_b_omni_ = rev_b_omni_;
    cur_c_omni_ = rev_c_omni_;
    cur_d_omni_ = rev_d_omni_;

    //delta_x_ave_omni_ = (delta_c_omni_ - delta_b_omni_)/2.0;
    //delta_y_ave_omni_ = (delta_b_omni_ - delta_a_omni_)/2.0;
    //delta_th_omni_    = (delta_b_omni_+delta_d_omni_)/(2*(wheel_a_mec_+wheel_b_mec_));
    delta_x_ave_omni_ = (delta_d_omni_ - delta_c_omni_)/2.0;
    delta_y_ave_omni_ = (delta_c_omni_ - delta_a_omni_)/2.0;
    delta_th_omni_    = (delta_c_omni_+delta_b_omni_)/(2*(wheel_a_mec_+wheel_b_mec_));

    v_linear_x_omni_ = delta_x_ave_omni_ / delta_time_;
    v_linear_y_omni_ = delta_y_ave_omni_ / delta_time_;
    v_angular_omni_  = delta_th_omni_ / delta_time_;

    delta_x_ = cos(delta_th_omni_)*delta_x_ave_omni_ - sin(delta_th_omni_)*delta_y_ave_omni_;
    delta_y_ = -sin(delta_th_omni_)*delta_x_ave_omni_ - cos(delta_th_omni_)*delta_y_ave_omni_;
        
    accumulation_x_ += (cos(accumulation_th_)*delta_x_ - sin(accumulation_th_)*delta_y_);
    accumulation_y_ += (sin(accumulation_th_)*delta_x_ + cos(accumulation_th_)*delta_y_);
    accumulation_th_ += delta_th_omni_;

    transformStamped_.header.stamp    = ros::Time::now();
    transformStamped_.header.frame_id = odom_frame_;
    transformStamped_.child_frame_id  = base_frame_;
    transformStamped_.transform.translation.x = accumulation_x_;
    transformStamped_.transform.translation.y = accumulation_y_;
    transformStamped_.transform.translation.z = 0.0;
    tf2::Quaternion q;
    q.setRPY(0,0,accumulation_th_);
    transformStamped_.transform.rotation.x = q.x();
    transformStamped_.transform.rotation.y = q.y();
    transformStamped_.transform.rotation.z = q.z();
    transformStamped_.transform.rotation.w = q.w();

    bl2lidar_transformStamped_.header.stamp = ros::Time::now();
    bl2lidar_transformStamped_.header.frame_id = base_frame_;
    bl2lidar_transformStamped_.child_frame_id = lidar_frame_;
    bl2lidar_transformStamped_.transform.translation.x = lidar_offset_x_;
    bl2lidar_transformStamped_.transform.translation.y = lidar_offset_y_;
    bl2lidar_transformStamped_.transform.translation.z = lidar_offset_z_;
    tf2::Quaternion bl2lidar_q;
    bl2lidar_q.setRPY(lidar_offset_roll_,lidar_offset_pitch_,lidar_offset_yaw_);
    bl2lidar_transformStamped_.transform.rotation.x = bl2lidar_q.x();
    bl2lidar_transformStamped_.transform.rotation.y = bl2lidar_q.y();
    bl2lidar_transformStamped_.transform.rotation.z = bl2lidar_q.z();
    bl2lidar_transformStamped_.transform.rotation.w = bl2lidar_q.w();
    bl2lidar_br_.sendTransform(bl2lidar_transformStamped_);



    if(publish_odom_transform_)
        br_.sendTransform(transformStamped_);
    
    odom_.header.frame_id = odom_frame_;
    odom_.child_frame_id  = base_frame_;
    odom_.header.stamp    = now_;
    odom_.pose.pose.position.x = accumulation_x_;
    odom_.pose.pose.position.y = accumulation_y_;
    odom_.pose.pose.position.z = 0;
    odom_.pose.pose.orientation.x = q.getX();
    odom_.pose.pose.orientation.y = q.getY();
    odom_.pose.pose.orientation.z = q.getZ();
    odom_.pose.pose.orientation.w = q.getW();
    odom_.twist.twist.linear.x = v_linear_x_omni_;
    odom_.twist.twist.linear.y = v_linear_y_omni_;
    odom_.twist.twist.angular.z = v_angular_omni_;
    if((v_linear_x_omni_==0)&&(v_linear_y_omni_==0)&&(v_angular_omni_==0))
    {
    odom_.twist.covariance = { 1e-9, 0, 0, 0, 0, 0, 
                              0, 1e-3, 1e-9, 0, 0, 0, 
                              0, 0, 1e6, 0, 0, 0,
                              0, 0, 0, 1e6, 0, 0, 
                              0, 0, 0, 0, 1e6, 0, 
                              0, 0, 0, 0, 0, 1e-9 };
    odom_.pose.covariance = { 1e-9, 0, 0, 0, 0, 0, 
                              0, 1e-3, 1e-9, 0, 0, 0, 
                              0, 0, 1e6, 0, 0, 0,
                              0, 0, 0, 1e6, 0, 0, 
                              0, 0, 0, 0, 1e6, 0, 
                              0, 0, 0, 0, 0, 1e-9 };
    }
    else
    {
    odom_.twist.covariance = { 1e-3, 0, 0, 0, 0, 0, 
                              0, 1e-3, 1e-9, 0, 0, 0, 
                              0, 0, 1e6, 0, 0, 0,
                              0, 0, 0, 1e6, 0, 0, 
                              0, 0, 0, 0, 1e6, 0, 
                              0, 0, 0, 0, 0, 1e-3 };
    odom_.pose.covariance = { 1e-3, 0, 0, 0, 0, 0, 
                              0, 1e-3, 1e-9, 0, 0, 0, 
                              0, 0, 1e6, 0, 0, 0,
                              0, 0, 0, 1e6, 0, 0, 
                              0, 0, 0, 0, 1e6, 0, 
                              0, 0, 0, 0, 0, 1e-3 };

    }
    odom_pub_.publish(odom_);
    
    last_time_ = now_;
}

//串口IMU数据包解析函数
void XtarkDriver::handle_imu_data(uint8_t* buffer_data)
{
    imu_data_.gyro_x  = (float)(((int16_t)(buffer_data[4]*256+buffer_data[5]))/32768.0f*2000.0f)*M_PI/180.0;
    imu_data_.gyro_y  = (float)(((int16_t)(buffer_data[6]*256+buffer_data[7]))/32768.0f*2000.0f)*M_PI/180.0;
    imu_data_.gyro_z  = (float)(((int16_t)(buffer_data[8]*256+buffer_data[9]))/32768.0f*2000.0f)*M_PI/180.0;
    imu_data_.accel_x = (float)(((int16_t)(buffer_data[10]*256+buffer_data[11]))/32768.0f*2.0f*9.8);
    imu_data_.accel_y = (float)(((int16_t)(buffer_data[12]*256+buffer_data[13]))/32768.0f*2.0f*9.8);
    imu_data_.accel_z = (float)(((int16_t)(buffer_data[14]*256+buffer_data[15]))/32768.0f*2.0f*9.8);

/*    ax_roll_acc_ = -(atan2((int16_t)(buffer_data[10]*256+buffer_data[11]),(int16_t)(buffer_data[14]*256+buffer_data[15])*180))/M_PI;
    ax_roll_ = ax_cm_k_*ax_roll_acc_+(1-ax_cm_k_)*(ax_roll_+((float)((int16_t)(buffer_data[6]*256+buffer_data[7])/16.4)*0.01));
    
    ax_pitch_acc_ = (atan2((int16_t)(buffer_data[12]*256+buffer_data[13]),(int16_t)(buffer_data[14]*256+buffer_data[15])*180))/M_PI;
    ax_pitch_ = ax_cm_k_*ax_pitch_acc_+(1-ax_cm_k_)*(ax_pitch_+((float)((int16_t)(buffer_data[4]*256+buffer_data[5])/16.4)*0.01));

    ax_yaw_ = (ax_yaw_-(float)((int16_t)(buffer_data[8]*256+buffer_data[9])/16.4)*0.01);
    */
    if(imu_msg_count_<120)
    {
	    imu_msg_count_++;
	    ax_roll_=0;
	    ax_pitch_=0;
	    ax_yaw_=0;
    }
    else
    {
    /*ax_roll_acc_ = -(atan2(imu_calib_data_.linear_acceleration.x,imu_calib_data_.linear_acceleration.z)*180)/M_PI;
    ax_roll_ = ax_cm_k_*ax_roll_acc_+(1-ax_cm_k_)*(ax_roll_+(imu_calib_data_.angular_velocity.y)*0.01);
    ax_pitch_acc_ = -(atan2(imu_calib_data_.linear_acceleration.y,imu_calib_data_.linear_acceleration.z)*180)/M_PI;
    ax_pitch_ = ax_cm_k_*ax_pitch_acc_+(1-ax_cm_k_)*(ax_pitch_+(imu_calib_data_.angular_velocity.x)*0.01);
    ax_yaw_ = (ax_yaw_ -(imu_calib_data_.angular_velocity.z)*0.01);*/
    ax_roll_acc_ = -(atan2(imu_calib_data_.linear_acceleration.x,imu_calib_data_.linear_acceleration.z));
    ax_roll_ = ax_cm_k_*ax_roll_acc_+(1-ax_cm_k_)*(ax_roll_+(imu_calib_data_.angular_velocity.y)*0.01);
    ax_pitch_acc_ = -(atan2(imu_calib_data_.linear_acceleration.y,imu_calib_data_.linear_acceleration.z));
    ax_pitch_ = ax_cm_k_*ax_pitch_acc_+(1-ax_cm_k_)*(ax_pitch_+(imu_calib_data_.angular_velocity.x)*0.01);
    ax_yaw_ = (ax_yaw_ -(imu_calib_data_.angular_velocity.z)*0.01);
    }
    //std::cout<<"roll:  "<<ax_roll_<<"  pitch:  "<<ax_pitch_<<"  yaw:  "<<ax_yaw_*180/M_PI<<std::endl;

    //imu_data_.q0      = (float)(((int16_t)(buffer_data[16]*256+buffer_data[17]))/32768.0f);
    //imu_data_.q1      = (float)(((int16_t)(buffer_data[18]*256+buffer_data[19]))/32768.0f);
    //imu_data_.q2      = (float)(((int16_t)(buffer_data[20]*256+buffer_data[21]))/32768.0f);
    //imu_data_.q3      = (float)(((int16_t)(buffer_data[22]*256+buffer_data[23]))/32768.0f);
    
   // imu_data_.angle_x = (buffer_data[5]*256+buffer_data[6])/100;
   // imu_data_.angle_y = (buffer_data[7]*256+buffer_data[8])/100;
   // imu_data_.angle_z = (buffer_data[9]*256+buffer_data[10])/100;
    imu_pub_data_.orientation = tf::createQuaternionMsgFromRollPitchYaw(ax_roll_,ax_pitch_,ax_yaw_);
    imu_pub_data_.header.stamp = ros::Time::now();
    imu_pub_data_.header.frame_id = imu_frame_;
    imu_pub_data_.angular_velocity.x = imu_data_.gyro_x;
    imu_pub_data_.angular_velocity.y = imu_data_.gyro_y;
    imu_pub_data_.angular_velocity.z = imu_data_.gyro_z;
    imu_pub_data_.linear_acceleration.x = imu_data_.accel_x;
    imu_pub_data_.linear_acceleration.y = imu_data_.accel_y;
    imu_pub_data_.linear_acceleration.z = imu_data_.accel_z;
    //imu_pub_data_.orientation.w = imu_data_.q0;
    //imu_pub_data_.orientation.x = imu_data_.q1;
    //imu_pub_data_.orientation.y = imu_data_.q2;
    //imu_pub_data_.orientation.z = imu_data_.q3;

    imu_pub_data_.orientation_covariance = {0.05, 0, 0,
	    				    0, 0.05, 0,
					    0, 0, 0.05};
    imu_pub_data_.angular_velocity_covariance = {0.01, 0, 0,
	    				         0, 0.01, 0,
					         0, 0, 0.01};
    imu_pub_data_.linear_acceleration_covariance = {-1, 0, 0,
	    				             0, 0, 0,
					             0, 0, 0};

    imu_pub_.publish(imu_pub_data_);
	
    
}

//串口电池电压数据包解析函数
void XtarkDriver::handle_battery_data(uint8_t* buffer_data)
{
    battery_pub_data_.data = (float)(((buffer_data[4]<<8)+buffer_data[5]))/100;
    battery_pub_.publish(battery_pub_data_);

}

//串口超声波数据包解析函数（预留）
void XtarkDriver::handle_sonar_data(uint8_t* buffer_data)
{

}


int main(int argc,char** argv)
{
    ros::init(argc,argv,"Xtark_driver_node");
    XtarkDriver driver;
    driver.loop();
    return 0;
}
