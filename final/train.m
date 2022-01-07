% 获取仿真数据
num_samples = 9997;
f1 = out.train_u(1: 9997, 2);     % 0.03s-99.96s
f2 = out.train_u(2: 9998, 2);     % 0.04s-99.97s
f3 = out.train_y(1: 9997, 2);     % 0.06s-99.99s
f4 = out.train_y(2: 9998, 2);   % 0.05s-99.98s
f5 = out.train_y(3: 9999, 2);   % 0.04s-99.97s
f6 = out.train_y(4: 10000, 2);   % 0.03s-99.96s

% 转化为标签对
feature = [f1 f2 f3 f4 f5 f6]';
label = out.train_y(5: 10001, 2)';        % 0.07s-100s

% 可视化
figure
subplot 211
plot(f1);
title('u')
grid on
xlabel('t'); ylabel('u');
subplot 212
plot(f2);
title('p')
xlabel('t'); ylabel('p');
print(gcf,'-dpng', 'Train Set')

