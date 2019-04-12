%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright
%                       Welkin XZ
%                       Dec 10th,2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function bisection5(f, a, b, tol, num)

    % bisenction5�����ַ���⺯���ĸ�
    % f: ����
    % a, b: ��ʼ�㣬������Ҫf(a)*f(b)<0
    % tol: ���ȣ�Ĭ��1e-6
    % num: ѭ��������Ĭ��50
    %
    % example��
    %   bisection5            % Ĭ����sin(x)�ĸ�������
    %   bisection5(@tan, -1, 0.56)
    %   bisection5(@tan, 1, 2, 1e-12, 100)
    %
    % ���ַ������⣬����tan(x)��(0.5, 6)֮���и�pi, ���ǡ���
    %   bisection5(@tan, 0.5, 6)  % can not find the root

    if ~exist('tol', 'var') || isempty(tol)
        tol = 1e-6;
    end
    
    if ~exist('f', 'var') || isempty(f)
        f = @sin;
    end
    
    if ~exist('num', 'var') || isempty(num)
        num = 50;
    end
    
    if ~exist('a', 'var') || isempty(a)
        a = -1;
    end
    
    if ~exist('b', 'var') || isempty(b)
        b = 1;
    end
    
    if f(a) * f(b) >= 0
        disp("Please make sure f(a)*f(b)<0")
        return
    end

    c = (a + b) / 2;
    n = 1;

    while abs(f(c)) > tol && n <= num
        if f(a) * f(c) >0
            a = c;
        else
            b = c;
        end
        c = (a + b) / 2;
        n = n + 1;
    end

    if n > num
        disp("Not find the root.")
    else
        fprintf("The root of function is %f\n", c)
    end
    
