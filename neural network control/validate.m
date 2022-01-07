% 设定初值
N = 9999;
t = 1:N;
u_init = 5.1;
p_init = 23364;
net = net_16;       % 调用工作区中特定的网络模型

% 阶跃信号
val_u_step = u_init + 0.1 * u_init * stepfun(t, 0);     % 阶跃10%
val_p_step = zeros(1, N + 1);
val_p_step(1) = sim(net, [u_init; p_init]);

% 斜坡信号
val_u_ramp = u_init + 0.0001 * t;
val_p_ramp = val_p_step;

% 正弦信号
val_u_sin = u_init + 2 * sin(t * 0.05);
val_p_sin = val_p_step;

% 预测结果
for i = 1:N
    val_p_step(i+1) = sim(net, [val_u_step(i); val_p_step(i)]);
    val_p_ramp(i+1) = sim(net, [val_u_ramp(i); val_p_ramp(i)]);
    val_p_sin(i+1) = sim(net, [val_u_sin(i); val_p_sin(i)]);
end

