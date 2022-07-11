function [x,y] = Problem3()
%Problem3 

A = [1 1 ; 1 2 ; 1 3];
b = [1 ; 5 ; 10];

x = A\b;
y = A*x;

if min(y == b)
    fprintf('A*x is equal to b');
else
    fprintf('A*x is not equal to b');

end


