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
*@file linedetect.hpp
*@author Sudarshan Raghunathan
*@brief Header file for class linedetect
*/

#pragma once
#include <cv_bridge/cv_bridge.h>
#include <vector>
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/opencv.hpp"
#include "ros/ros.h"
#include "xtark_line_follower/pos.h"
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <boost/thread.hpp>
#include <xtark_line_follower/HSV_reconfigConfig.h>
#include <dynamic_reconfigure/server.h>
#include <boost/bind.hpp>

/**
*@brief Line Detect class contains all the functions for image procesing and direction publishing
*/
class LineDetect {
 public:
    cv::Mat img;  /// Input image in opencv matrix format
    cv::Mat img_filt;  /// Filtered image in opencv matrix format
    int dir;  /// Direction message to be published

    //image_transport::Publisher output_pub_;
    //boost::shared_ptr<image_transport::ImageTransport> it_;
/**
*@brief Callback used to subscribe to the image topic from the Turtlebot and convert to opencv image format
*@param msg is the image message for ROS
*@return none
*/
    void imageCallback(const sensor_msgs::ImageConstPtr& msg);
    

    ros::Publisher imagePub;
    cv::Mat pushBackimg(cv::Mat input);
/**
*@brief Function that applies Gaussian filter in the input image 
*@param input is the image from the turtlebot in opencv matrix format
*@return Mat of Gaussian filtered image in opencv matrix format
*/
    cv::Mat Gauss(cv::Mat input);
    cv::Mat outputimg;
/**
*@brief Function to perform line detection using color thresholding,image masking and centroid detection to publish direction 
*@param input is the Filtered input image in opencv matrix format
*@return int direction which returns the direction the turtlebot should head in
*/
    int colorthresh(cv::Mat input,int h_l,int h_h,int s_l,int s_h,int v_l,int v_h);

 private:
    cv::Scalar LowerYellow;
    cv::Scalar UpperYellow;
    cv::Mat img_hsv;
    cv::Mat img_mask;
};
