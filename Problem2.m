function [x1,x2,x3] = Problem2()
%Problem2 

A = [1 1 1 ; 1 2 3 ; 1 3 6];
b = [1 ; -5 ; 2];

fprintf('det(A)=%d\n',det(A));
fprintf('rank(A)=%d\n',rank(A));

% method 1
x2 = inv(A)*b;

% method 2
x1 = A\b;

% method 3
x3 = linsolve(A,b);
end

