% ����sin(x)��[0, pi/2]�ϵ����
a = 0;
b = pi/2;
% n = 10;
n = 100;
% һά����
x1 = a + (b - a) * rand(1, n);
S1 = (b - a) * mean(sin(x1));
% ��ά����
x2 = a + (b - a) * rand(1, n);
y2 = rand(1, n);
m = sum(y2 <= sin(x2));
S2 = m / n * (b - a) * 1;
% ��ż����
x31 = rand(1, n);
x32 = 1 - x31;
x3 = a + (b - a) * [x31, x32];
S3 = (b - a) * mean(sin(x3));

fprintf("�ظ�������%d\n", n)
fprintf("һά���������%f\n", S1)
fprintf("��ά���������%f\n", S2)
fprintf("�����ż������%f\n", S3)
