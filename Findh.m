function [h1, h2] = Findh(f, g, x, error)
%Findh
%   
h1 = 0;
h2 = 0;
y = g(x);
for i = 1:20
    for j = 9:-1:1
           y1 = Option2_Method1(f, x, j*10^(-i));
           if max(abs(y-y1)) <= error
               h1 = j*10^(-i);
               break
           end
    end
    if h1 ~= 0
        break
    end
end
for i = 1:20
    for j = 9:-1:1
           y2 = Option2_Method2(f, x, j*10^(-i));
           if max(abs(y-y2)) <= error
               h2 = j*10^(-i);
               break
           end
    end
    if h2 ~= 0
        break
    end
end
end

