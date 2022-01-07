close all; clc;

% 将模糊子集写成向量形式，大写表示隶属度，小写表示论域
A = [1 0.8 0.6];
B = [1 0.7 0.4];
A_ = [0.5 1 0.7];
a = [2 3 4];
b = [3 4 5];

% 用 最小运算 和 最大-最小合成，求 A 与 A_ 的相似度
% 先求最小
for i = 1 : length(A)
    min_A(i) = min(A(i), A_(i));
end
% 再求最大
q = max(min_A);

% 用 q 限位 B 的隶属度函数，得到 B_ 的隶属度函数
for i = 1 : length(B)
    B_(i) = min(B(i), q);
end

% 重心法解模糊化
z = sum(b .* B_) / sum(B_)
