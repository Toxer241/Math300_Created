function [x] = Problem4()
%Problem4

a = 0;
i = 1;
x = [];
while a <= 20
    x(i) = rand();
    a = a + x(i);
    i = i+1;
end
end

