% mat = load('train_set.mat');
% u = mat.out.u;
% p = mat.out.p;

% 获取仿真数据
feature_1 = out.train_u(3:10000, 2);   % 0.2s-99.99s
feature_2 = out.train_p(4:10001, 2);   % 0.2s-99.99s

% 可视化
figure
subplot 211
plot(feature_1);
title('u')
grid on
xlabel('t'); ylabel('u');
subplot 212
plot(feature_2);
title('p')
xlabel('t'); ylabel('p');
print(gcf,'-dpng', 'Train Set')

% 转化为标签对
feature = [feature_1 feature_2]';
label = out.train_p(5:10002, 2)';       % 0.3s-100s