function [] = Problem3_Plot()
%Problem3_Plot

t = 0 : 0.01 : 1;
X = 1 + t*(5/6-1);
Y = 5 + t*(16/3-5);
Z = 10 + t*(59/6-10);

a = 0.5 : 0.01 : 1.5;
b = 5 : 0.01 : 5.5;
[A,B] = meshgrid(a,b);
C = -A + 2*B;

mesh(A,B,C);
hold on
plot3(1,5,10,'o',5/6,16/3,59/6,'o',X,Y,Z);
legend('S','x','y')
xlabel('x');ylabel('y');zlabel('z');
axis equal
end