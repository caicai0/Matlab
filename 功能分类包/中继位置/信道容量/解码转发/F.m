function y = F(r,d,D,t)  %F(t)
    %y = normcdf(d/sqrt(2*D*t)*((v*t/d)+1)) + exp(v*d/D)*normcdf(-d/sqrt(2*D*t)*(v*t/d+1));
     y = r/(d+r)*erfc(d./sqrt(4*D*t));
end