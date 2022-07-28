function [y] = Option2_Method1(f, x, h)
%Option2_Method1
%   
n = length(x);
xr = x + h*ones(1,n);
y = (f(xr) - f(x))/h;
end

