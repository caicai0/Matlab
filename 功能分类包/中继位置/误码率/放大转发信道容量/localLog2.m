function y = localLog2(x)
    s = size(x);
    res = zeros(s(1,1),s(1,2));
    for i =1:1:s(1,1)
        for j = 1:1:s(1,2)
            item = x(i,j);
            if item<=0 
                res(i,j) = 0;
            else
                res(i,j) = log2(item);
            end
        end
    end
    y = res;
end
