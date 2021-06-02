# 树莓派小车开发环境

## 目录说明

| 目录及文件       | 功能               | 备注 |
| ---------------- | ------------------ | ---- |
| mongo-cxx-driver | 驱动目录           |      |
| Software         | 软件目录           |      |
| xtark_exc        |                    |      |
| ros_ws           | 自主开发功能源代码 |      |
| xtark_start.sh   | 启动脚本           |      |

## 工作空间说明

| 目录及文件    | 功能                                                         | 备注 |
| ------------- | ------------------------------------------------------------ | ---- |
| xtark_driver  | 底盘驱动，包括驱动功能包、运动控制、IMU 数据、摄像头、激光雷达等传感器 |      |
| xtark_nav     | SLAM 建模及导航（算法实现）                                  |      |
| xtark_cv      | 图像处理，包括OpenCV和示例                                   |      |
| xtark_apps    | 扩展应用，包括激光雷达跟随、机器人编队、激光雷达里程计等     |      |
| third_pakages | 第三方功能包                                                 |      |

<p style="color:red;">注:功能包中的launch目录中存放着launch启动文件, .bashrc文件为系统环变量文件。</p>

launch启动文件使用方式`roslaunch <pakage name> <launchfile>`

## 底盘驱动功能包

### launch文件说明

| 文件名                         | 说明                                                         |
| ------------------------------ | ------------------------------------------------------------ |
| xtark_driver.launch            | 启动机器人底盘驱动节点，提供底盘的底层交互和控制             |
| xtark_lidar.launch             | 启动激光雷达节点，提供激光雷达数据                           |
| xtark_camera.launch            | 启动摄像头节点，提供图像数据                                 |
| xtark_joy.launch               | 启动PC手柄遥控节点，实现PC手柄遥控                           |
| xtark_keyboard.launch          | 启动键盘控制节点，实现键盘控制                               |
| xtark_bringup.launch           | 启动导航、建模所需要的底盘功能包，包括运动控制、激光雷达驱动等 |
| xtark_calibrate_linear.launch  | 启动里程计线速度校准                                         |
| xtark_calibrate_angular.launch | 启动里程计角速度校准                                         |

<p style="color:red;">注：底盘驱动使用xtark_params.yaml文件配置运行参数。</p>

底盘驱动源码文件为`xtark_driver.cpp`采用C++编写，而校准功能、手柄等用python编写。

