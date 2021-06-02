# 虚拟机开发环境

## 目录介绍

用户目录下ros_ws目录为工程目录，其下的目录均为ROS功能包

| 目录名         | 功能           | 备注 |
| -------------- | -------------- | ---- |
| xtark_joy      | 摇杆、手柄控制 |      |
| xtark_keyboard | 键盘控制       |      |
| xtark_viz      | RVIZ配置文件   |      |

## ros功能包目录功能

| 目录名 | 功能 | 备注 |
| ------ | ---- | ---- |
|        |      |      |



## 开发环境搭建

ROS 安装方法详见http://wiki.ros.org/cn

在用户目录下创建ros_ws文件夹并在其中创建src目录。

运行`catkin_make`命令将自动生成build哈devel两个目录。

将代码拷贝到src目录中，进入ros_ws目录再次执行`catin_make`。

