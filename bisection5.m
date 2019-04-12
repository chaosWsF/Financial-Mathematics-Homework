%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright
%                       Welkin XZ
%                       Dec 10th,2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function bisection5(f, a, b, tol, num)

    % bisenction5：二分法求解函数的根
    % f: 函数
    % a, b: 初始点，并且需要f(a)*f(b)<0
    % tol: 精度，默认1e-6
    % num: 循环次数，默认50
    %
    % example：
    %   bisection5            % 默认求sin(x)的根，……
    %   bisection5(@tan, -1, 0.56)
    %   bisection5(@tan, 1, 2, 1e-12, 100)
    %
    % 二分法的问题，例如tan(x)在(0.5, 6)之间有根pi, 但是……
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
    
