## 说明
### 1. 项目简介

​		本项目通过 `matlab` 自带的**神经网络工具箱**进行 **电磁比例阀** 的系统识别

### 2. 目录

​	|- `README.md`

​	|- `data_process.m`

​	| - `validate.m`

​	| - `compare.m`

​	| - `train_set.slx`

​	| - `Train Set.png`

​	| - `Validation Compare.png`

### 3. 使用方式

* 运行 `train_set.slx` 获取训练集和验证集，保存在工作空间中
* 运行 `data_process.m` 进行数据处理，将仿真得到的数据转换为 **特征-标签** 的形式，获得输入输出的图像
* 打开神经网络工具箱进行拟合，将训练得到的模型保存到工作空间中
* 运行 `validate.m` ，根据自己设定的模型可以获得对应神经网络的输出
* 运行 `compare.m` 得到当前网络下不同测试信号的对比图

### 4. 作者

​	$HTY$

