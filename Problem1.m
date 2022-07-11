function [] = Problem1()
%Problem1

A = [2 -1 4 ; 9 6 2 ; 1 3 8];
B = ones(3);
x = [3 ; 6 ; 8];
y = [5 10 15];

fprintf('A*B=\n');disp(A*B);
fprintf('A*x=\n');disp(A*x);
fprintf('x''*B=\n');disp(x'*B);
fprintf('x*y=\n');disp(x*y);
fprintf('y*x=\n');disp(y*x);
fprintf('x.*y=\n');disp(x.*y);
fprintf('A.*B=\n');disp(A.*B);
end

