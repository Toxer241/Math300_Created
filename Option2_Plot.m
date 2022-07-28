function [] = Option2_Plot(f, g, x, h)
%Option2_Plot
%   
y = g(x);
y1 = Option2_Method1(f, x, h);
y2 = Option2_Method2(f, x, h);
err1 = abs(y-y1);
err2 = abs(y-y2);
plot(x,err1,'r',x,err2,'b')
legend('error1','error2')
xlabel('x'), ylabel('error')
end

