function [] = Problem5()
%Problem5

t = 0 : 0.01 : pi;
x = 1 + cos(2*t);
y = -1 + 3*sin(4*t);
plot(x,y)
xlabel('x');ylabel('y');
axis([-1 3 -5 3])
end
