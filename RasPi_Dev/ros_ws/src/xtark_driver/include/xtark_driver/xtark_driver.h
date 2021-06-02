#include <ros/ros.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Int16.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/Float32.h>
#include <sensor_msgs/Imu.h>
#include <lino_msgs/Imu.h>
#include <sensor_msgs/Range.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf/tf.h>
#include <dynamic_reconfigure/server.h>
#include <xtark_driver/PID_reconfigConfig.h>


#include <string>
#include <vector>
#include <math.h>

#include <boost/asio.hpp>
#include <boost/asio/serial_port.hpp>
#include <boost/system/error_code.hpp>
#include <boost/system/system_error.hpp>
#include <boost/bind.hpp>
#include <boost/thread.hpp>

#define G     9.8
#define head1 0xAA
#define head2 0x55
#define sendType_wheel_speed 0x01
#define sendType_pid         0x11

#define foundType_wheel_count 0x01
#define foundType_battery     0x02
#define foundType_imu         0x03
#define foundType_sonar       0x04
#define foundType_loop_test   0x31

//#define M_PI 3.1415926535

enum packetFinderState
{
    waitingForHead1,
    waitingForHead2,
    waitingForPayloadSize,
    waitingForPayloadType,
    waitingForPayload,
    waitingForCheckSum,
    handlePayload
};



struct pid_param
{
    int kp;
    int ki;
    int kd;
};

struct imu_data
{
    float angle_x;
    float angle_y;
    float angle_z;
    float gyro_x;
    float gyro_y;
    float gyro_z;
    float accel_x;
    float accel_y;
    float accel_z;
    float q0;
    float q1;
    float q2;
    float q3;
};

typedef boost::shared_ptr<boost::asio::serial_port> serialp_ptr;

class XtarkDriver
{
    public:
        XtarkDriver();
        ~XtarkDriver();
        void loop();
    
    private:
        bool initRobot();

        void recv_msg();

        void cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg);
        void send_speed_callback(const ros::TimerEvent&);
	void dynamic_reconfig_callback(xtark_driver::PID_reconfigConfig &config, uint32_t level);
	void calib_imu_callback(const sensor_msgs::Imu::ConstPtr& msg);

        void handle_speed_data(uint8_t* buffer_data);
        void handle_battery_data(uint8_t* buffer_data);
        void handle_imu_data(uint8_t* buffer_data);
        void handle_sonar_data(uint8_t* buffer_data);

        void calc_encoder(int& cur, int& recv, int &delta);
        void check_sum(uint8_t* data, size_t len, uint8_t& dest);
        void distribute_data(uint8_t msg_type, uint8_t* buffer_data);
        void upload_pid_param();


        packetFinderState state_;
	int imu_msg_count_=0;

        struct imu_data imu_data_;
        sensor_msgs::Imu imu_pub_data_;
        sensor_msgs::Imu imu_calib_data_;
        std_msgs::Float32  battery_pub_data_;

        boost::mutex cmd_vel_mutex_;
        boost::system::error_code ec_;
        boost::asio::io_service io_service_;
        boost::mutex mutex_;
        serialp_ptr sp_;

        bool recv_flag_;
        bool publish_odom_transform_;
        bool start_flag_;
        uint8_t msg_seq_;

	double ax_roll_acc_;
	double ax_roll_;
	double ax_pitch_acc_;
	double ax_pitch_;
	double ax_yaw_;
	double ax_cm_k_;
	

        geometry_msgs::Twist current_twist_;
        nav_msgs::Odometry odom_;
        geometry_msgs::TransformStamped transformStamped_;
        geometry_msgs::TransformStamped bl2lidar_transformStamped_;
        tf2_ros::TransformBroadcaster br_;
        tf2_ros::TransformBroadcaster bl2lidar_br_;

        ros::Time last_twist_time_;
        ros::Time last_time_;
        ros::Time now_;
        ros::Time check_time_;

        ros::Publisher odom_pub_;
        ros::Publisher battery_pub_;
        ros::Publisher imu_pub_;
        ros::Publisher sonar_pub_;

        ros::Publisher lvel_pub_;
        ros::Publisher rvel_pub_;
        ros::Publisher lset_pub_;
        ros::Publisher rset_pub_;

        ros::Publisher avel_pub_;
        ros::Publisher bvel_pub_;
        ros::Publisher cvel_pub_;
        ros::Publisher dvel_pub_;
        
        ros::Publisher aset_pub_;
        ros::Publisher bset_pub_;
        ros::Publisher cset_pub_;
        ros::Publisher dset_pub_;
        
        std_msgs::Int32 lvel_pub_data_;
        std_msgs::Int32 rvel_pub_data_;
        std_msgs::Int32 rset_pub_data_;
        std_msgs::Int32 lset_pub_data_;

        std_msgs::Int32 avel_pub_data_;
        std_msgs::Int32 bvel_pub_data_;
        std_msgs::Int32 cvel_pub_data_;
        std_msgs::Int32 dvel_pub_data_;

        std_msgs::Int32 aset_pub_data_;
        std_msgs::Int32 bset_pub_data_;
        std_msgs::Int32 cset_pub_data_;
        std_msgs::Int32 dset_pub_data_;


        ros::Subscriber cmd_sub_;
        ros::Subscriber imu_calib_sub_;

        std::string port_name_;
        
        int baud_rate_;

        std::string odom_frame_;
        std::string lidar_frame_;
        std::string imu_frame_;
        std::string base_frame_;
        std::string code_version_;
        int control_rate_;
        int sensor_rate_;

	double lidar_offset_x_;
	double lidar_offset_y_;
	double lidar_offset_z_;
	double lidar_offset_roll_;
	double lidar_offset_pitch_;
	double lidar_offset_yaw_;
	tf::Transform bl2lidar_transform_;

     /*   double maximum_encoding_;
        double pulse_per_cycle_;
        double encoder_resolution_;
        double reduction_ratio_;
        double pid_rate_;
        double model_param_cw;
        double wheel_diameter_;
    */
        /***************2WD**************/
        double wheel_track_;
        double wheel_diameter_;
        double gear_reduction_;
        double encoder_resolution_;
        double pid_rate_;
        double ticks_per_meter_;
        double start_rotation_limit_w_;
 
        /* 解决定时器溢出*/
        int    encoder_min_;
        int    encoder_max_;
        double encoder_low_wrap_;
        double encoder_high_wrap_;
        int    l_wheel_mult_;
        int    r_wheel_mult_;

        double delta_time_;
        double delta_xy_ave_;
        double delta_th_;

        double delta_x_;
        double delta_y_;

        double v_linear_;
        double v_angular_;
        double accumulation_x_;
        double accumulation_y_;
        double accumulation_th_;

        double accel_limit_;
        double max_accel_;

        int cur_left_;
        int cur_right_;
        int16_t rev_left_;
        int16_t rev_right_;
        double delta_left_;
        double delta_right_;

	double linear_correction_factor_;
	double angular_correction_factor_;
        /********Omini************/
        //bool is_omni_;
        std::string base_type_;


        double wheel_track_omni_;
        double wheel_diameter_omni_;
        double gear_reduction_omni_;
        double encoder_resolution_omni_;
        double ticks_per_meter_omni_;


        int    wheel_mult_a_omni_;
        int    wheel_mult_b_omni_;
        int    wheel_mult_c_omni_;
        int    wheel_mult_d_omni_;

        double delta_x_ave_omni_;
        double delta_y_ave_omni_;
        double delta_th_omni_;
        double v_linear_x_omni_;
        double v_linear_y_omni_;
        double v_angular_omni_;
        int cur_a_omni_;
        int cur_b_omni_;
        int cur_c_omni_;
        int cur_d_omni_;
        int16_t rev_a_omni_;
        int16_t rev_b_omni_;
        int16_t rev_c_omni_;
        int16_t rev_d_omni_;
        double delta_a_omni_;
        double delta_b_omni_;
        double delta_c_omni_;
        double delta_d_omni_;
        /********Mecanum********/
        double wheel_a_mec_;
        double wheel_b_mec_;
        double wheel_diameter_mec_;
        double gear_reduction_mec_;
        double encoder_resolution_mec_;
        double ticks_per_meter_mec_;
        /********4WD********/
        double wheel_track_4wd_;
        double wheel_diameter_4wd_;
        double gear_reduction_4wd_;
        double encoder_resolution_4wd_;
        double ticks_per_meter_4wd_;

        int kp_;
        int ki_;
        int kd_;

};


