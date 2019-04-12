% 计算sin(x)在[0, pi/2]上的面积
a = 0;
b = pi/2;
% n = 10;
n = 100;
% 一维抽样
x1 = a + (b - a) * rand(1, n);
S1 = (b - a) * mean(sin(x1));
% 二维抽样
x2 = a + (b - a) * rand(1, n);
y2 = rand(1, n);
m = sum(y2 <= sin(x2));
S2 = m / n * (b - a) * 1;
% 对偶变量
x31 = rand(1, n);
x32 = 1 - x31;
x3 = a + (b - a) * [x31, x32];
S3 = (b - a) * mean(sin(x3));

fprintf("重复次数：%d\n", n)
fprintf("一维抽样结果：%f\n", S1)
fprintf("二维抽样结果：%f\n", S2)
fprintf("引入对偶变量：%f\n", S3)
