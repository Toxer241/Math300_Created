function [h1, h2] = Vect_Findh(f, g, x)
%Vect_Findh find h for error=1e-i, i=1,2,...,10
%   
h1 = zeros(1,10);
h2 = zeros(1,10);
y = g(x);
for k = 1:10
    error = 10^(-k);
    for i = 1:20
        for j = 9:-1:1
               y1 = Option2_Method1(f, x, j*10^(-i));
               if max(abs(y-y1)) <= error
                   h1(k) = j*10^(-i);
                   break
               end
        end
        if h1(k) ~= 0
            break
        end
    end
    for i = 1:20
        for j = 9:-1:1
               y2 = Option2_Method2(f, x, j*10^(-i));
               if max(abs(y-y2)) <= error
                   h2(k) = j*10^(-i);
                   break
               end
        end
        if h2(k) ~= 0
            break
        end
    end
end