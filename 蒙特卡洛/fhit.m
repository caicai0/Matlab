function y = fhit(r,d,D,t)
    y = r/(r+d)/sqrt(4*pi*D*t)*d/t*exp(-d^2/(4*D*t));
end

