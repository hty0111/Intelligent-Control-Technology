# 说明
## 1. 项目简介

​		本项目为 **基于智能控制技术的电机调速系统**，使用 `PID控制`，`模糊控制` 和 `神经网络控制` 实现速度环的控制。

## 2. 环境配置

* 运行环境： `matlab 2021a`

* 使用的库： `simulink, sfuntmpl, Neural Net Fitting`

## 3. 文件说明

​	|- `README.md`						 // help

​	| - `PID_model.slx`				// PID控制器

​	| - `fuzzy_model.slx`			// 模糊控制器

​	| - `fuzzy_controller.fis`  // 模糊规则集

​	| - `train_val_model.slx`	// 获取NNM模型的训练集和验证集

​	| - `train.m`							 // 训练模型

​	| - `validate.m`					   // 验证模型

​	| - `net_PID_model.slx`		 // 神经网络控制器

​	| - `init.m`								// 初始化权重

## 4. 使用方式

### 4.1 PID控制

* 运行 `PID_model.slx` 

### 4.2 模糊控制

* 运行 `fuzzy_model.slx`

### 4.3 神经网络控制

#### 4.3.1 系统辨识

* 运行 `train_val_model.slx` 获取训练集和验证集，保存在工作空间中
* 运行 `train.m` 进行数据处理，将仿真得到的数据转换为 **特征-标签** 的形式，获得输入输出的图像
* 打开神经网络工具箱进行离线训练，将训练得到的模型保存到工作空间中
* 运行 `validate.m` ，根据自己设定的模型可以获得对应神经网络的输出

#### 4.3.2 控制器

* 运行 `init.m` 初始化网络的权重
* 运行 `net_PID_model.slx` 进行在线训练

## 5. 作者

​	$HTY$	*2022.1.4*

