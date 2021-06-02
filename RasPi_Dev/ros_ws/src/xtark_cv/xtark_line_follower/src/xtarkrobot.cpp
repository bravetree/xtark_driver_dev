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
*@file xtarkrobot.cpp
*@author Sudarshan Raghunathan
*@brief  Functions definitions for xtarkrobot class
*/

#include <geometry_msgs/Twist.h>
#include <vector>
#include "ros/ros.h"
#include "ros/console.h"
#include "xtarkrobot.hpp"
#include "xtark_line_follower/pos.h"

#define my_abs(x) ((x)>=0.0)?(x):(-x)

void xtarkrobot::dir_sub(xtark_line_follower::pos msg) {
    xtarkrobot::dir = msg.direction;
}
void xtarkrobot::vel_cmd(geometry_msgs::Twist &velocity,
 ros::Publisher &pub, ros::Rate &rate) {

 float K_p = 0.0010;
 int dead_band = 100;
 int searching = 0;
 //float bias = 320.0 - xtarkrobot::dir;
 float bias = 640.0 - xtarkrobot::dir;
 
 if((bias > 639.0) || (bias < -639.0) || ((bias > -dead_band) && (bias < dead_band)))
{
   searching = 0;
   if((bias>639) || (bias < -639))
	{
	
        searching = 1;
	printf("I can't see the line!\r\n");
	}
   bias = 0.0;
}
if(searching == 1)
{
 velocity.linear.x =0.0;
 velocity.angular.z = 0.4;
}
else
{
 velocity.linear.x =0.10+ 0.20*(0.8-((my_abs(bias))/640.0));

 velocity.angular.z = K_p*bias;
}
 if(velocity.angular.z > 2.0)
	velocity.angular.z = 2.0;
 if(velocity.angular.z < -2.0)
	velocity.angular.z = -2.0;


 printf("bias:  %f, v_x : %f, v_z : %f\r\n",bias,velocity.linear.x,velocity.angular.z);
 pub.publish(velocity);
        rate.sleep();
    // If direction is left
/*    if (xtarkrobot::dir == 0) {
        velocity.linear.x = 0.12;
        velocity.angular.z = 0.25;
        pub.publish(velocity);
        rate.sleep();
        ROS_INFO_STREAM("Turning Left");
    }
    // If direction is straight
    if (xtarkrobot::dir == 1) {
        velocity.linear.x = 0.12;
        velocity.angular.z = 0;
        pub.publish(velocity);
        rate.sleep();
        ROS_INFO_STREAM("Straight");
    }
    // If direction is right
    if (xtarkrobot::dir == 2) {
        velocity.linear.x = 0.12;
        velocity.angular.z = -0.25;
        pub.publish(velocity);
        rate.sleep();
        ROS_INFO_STREAM("Turning Right");
    }
    // If robot has to search
    if (xtarkrobot::dir == 3) {
        velocity.linear.x = 0;
        velocity.angular.z = 0.15;
        pub.publish(velocity);
        rate.sleep();
        ROS_INFO_STREAM("Searching");
    }*/
}
