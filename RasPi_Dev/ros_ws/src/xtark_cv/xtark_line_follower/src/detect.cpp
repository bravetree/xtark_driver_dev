/** MIT License
Copyright (c) 2017 Sudarshan Raghunathan
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 *
 *@copyright Copyright 2017 Sudarshan Raghunathan
 *@file   detect.cpp
 *@author Sudarshan Raghunathan
 *@brief  Ros Nod to subscribe to turtlebot images and perform image processing to detect line
 */
#include <cv_bridge/cv_bridge.h>
#include <cstdlib>
#include <string>
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/opencv.hpp"
#include "ros/ros.h"
#include "ros/console.h"
#include "linedetect.hpp"
#include "xtark_line_follower/pos.h"

/**
 *@brief Main function that reads image from the turtlebot and provides direction to move using image processing
 *@param argc is the number of arguments of the main function
 *@param argv is the array of arugments
 *@return 0
*/
int h_low;
int s_low;
int v_low;
int h_high;
int s_high;
int v_high;
bool start_reconfig = false;

void dynamic_reconfig_callback(xtark_line_follower::HSV_reconfigConfig &config,uint32_t level)
{
     if(start_reconfig)
	{
	ROS_INFO("Set HSV space: H:[%d to %d} S:[%d to %d] V:[%d to %d]",config.h_low,config.h_high,config.s_low,config.s_high,config.v_low,config.v_high);
	if(config.h_low < config.h_high)	
	{
		h_low = config.h_low;
		h_high = config.h_high;
	}
	else
		ROS_WARN("H low must lower than H high!");
	if(config.s_low < config.s_high)	
	{
		s_low = config.s_low;
		s_high = config.s_high;
	}
	else
		ROS_WARN("S low must lower than S high!");
	if(config.v_low < config.v_high)	
	{
		v_low = config.v_low;
		v_high = config.v_high;
	}
	else
		ROS_WARN("V low must lower than V high!");
        }
     else
	{
	ROS_INFO("Init HSV paramter with config file!");
	start_reconfig = true;
	}
}
int main(int argc, char **argv) {
    // Initializing node and object
    ros::init(argc, argv, "detection");
    ros::NodeHandle n;
    ros::NodeHandle np("~");
    LineDetect det;
    dynamic_reconfigure::Server<xtark_line_follower::HSV_reconfigConfig> reconfig_server;
    dynamic_reconfigure::Server<xtark_line_follower::HSV_reconfigConfig>::CallbackType f;
    f = boost::bind(&dynamic_reconfig_callback,_1,_2);
    reconfig_server.setCallback(f);
    np.param<int>("h_low",h_low,0);
    np.param<int>("s_low",s_low,70);
    np.param<int>("v_low",v_low,50);
    np.param<int>("h_high",h_high,10);
    np.param<int>("s_high",s_high,255);
    np.param<int>("v_high",v_high,255);
    // Creating Publisher and subscriber
    ros::Subscriber sub = n.subscribe("/usb_cam/image_raw",
        1, &LineDetect::imageCallback, &det);

    ros::Publisher dirPub = n.advertise<
    xtark_line_follower::pos>("direction", 1);
    xtark_line_follower::pos msg;

    det.imagePub = n.advertise<sensor_msgs::Image>("output",1);


    while (ros::ok()) {
        if (!det.img.empty()) {
            // Perform image processing
            det.img_filt = det.Gauss(det.img);
            //msg.direction = det.colorthresh(det.img_filt);
            msg.direction = det.colorthresh(det.img_filt,h_low,h_high,s_low,s_high,v_low,v_high);
	   // imagePub.publish(cv_bridge::CvImage(std_msgs::Header,"bgr8",det.pushBackimg()).toImageMsg());
            // Publish direction message
            dirPub.publish(msg);
            }
        ros::spinOnce();
    }
    // Closing image viewer
    cv::destroyWindow("Turtlebot View");
}
