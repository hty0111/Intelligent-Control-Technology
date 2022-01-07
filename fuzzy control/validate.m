% 调用工作区中特定的网络模型
net = net_10;       
N = 10001;

% 真值
val_y = out.val_y(1: end, 2)';
val_u = out.val_u(1: end, 2)';

% 测试信号初始化
fit_u = val_u;
fit_y = [val_y(1:4) zeros(1, N-4)];
fit_y(5) = sim(net, [fit_u(1);fit_u(2);fit_y(1);fit_y(2);fit_y(3);fit_y(4)]);

% 预测结果
mae = 0;
for i = 1: 9997
    fit_y(i+4) = sim(net, [fit_u(i); fit_u(i+1); val_y(i); val_y(i+1); val_y(i+2); val_y(i+3)]);
    mae = mae + abs(fit_y(i+4) - val_y(i+4));
end
mae = mae / 9998;

% 可视化
figure('units','normalized','position',[0.1,0.1,0.5, 0.5])
plot(fit_y)
hold on
plot(val_y)
xlabel('t')
ylabel('y')
grid on
legend('fit', 'true')

print(gcf,'-dpng', 'Validation Compare')

