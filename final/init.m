% 初始化权重

nh = 10;	% 隐藏层神经元数
Wi1_init = randi([-20, 20], 3, nh);	% 当前时刻的隐藏层权重
Wi2_init = randi([-20, 20], 3, nh);	% 上一时刻的隐藏层权重
Wo1_init = randi([0, 10], nh, 1);		% 当前时刻的输入层权重
Wo2_init = randi([0, 10], nh, 1);		% 上一时刻的输入层权重
