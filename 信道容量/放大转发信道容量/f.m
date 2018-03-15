function y = f(r,d,D,t)
    s = size(t);
    res = zeros(s(1,1),s(1,2));
    for i =1:1:s(1,1)
        for j = 1:1:s(1,2)
            t_i_j = t(i,j);
            if t_i_j >0
                res(i,j) = r./(r+d).*1./sqrt(4.*pi.*D.*t_i_j).*d./t_i_j.*exp(-d.^2./(4.*D.*t_i_j));
            else
                res(i,j) = 0;
            end
        end
    end
    y = res;
end