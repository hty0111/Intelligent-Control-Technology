% 计算误差
true_p_step = out.true_p_step(end-9999:end, 2)';
true_p_ramp = out.true_p_ramp(end-9999:end, 2)';
true_p_sin = out.true_p_sin(end-9999:end, 2)';
mae = zeros(1, 3);
for i = 1:5000
    mae(1) = mae(1) + abs(true_p_step(i) - val_p_step(i));
    mae(2) = mae(2) + abs(true_p_ramp(i) - val_p_ramp(i));
    mae(3) = mae(3) + abs(true_p_sin(i) - val_p_sin(i));
end
mae = mae / 5000;

% 可视化
figure('units','normalized','position',[0.1,0.1,0.8, 1])
subplot 311
plot(val_p_step)
hold on
plot(true_p_step)
title('step')
xlabel('t')
ylabel('p')
grid on
legend('net step', 'true step')

subplot 312
plot(val_p_ramp)
hold on
plot(true_p_ramp)
title('ramp')
xlabel('t')
ylabel('p')
grid on
legend('net ramp', 'true ramp')

subplot 313
plot(val_p_sin)
hold on
plot(true_p_sin)
title('sin')
xlabel('t')
ylabel('p')
grid on
legend('net sin', 'true sin')

print(gcf,'-dpng', 'Validation Compare')
