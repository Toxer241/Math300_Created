function [y] = Option2_Method2(f, x, h)
%Option2_Method2
%   
n = length(x);
xr = x + h*ones(1, n);
xl = x - h*ones(1, n);
y = (f(xr) - f(xl))/2/h;
end