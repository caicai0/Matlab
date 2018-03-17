function y = F(r,d,D,t)
     y = r/(d+r)*erfc(d/sqrt(4*D*t));
end