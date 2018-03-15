p=1/2;
miu_I = 2*10^16;
Q = 2*10^9;
sigma_I = 0.3*miu_I;
d = 20;

y = Pe(p,miu_I,Q,sigma_I,d);

Q = linspace(0,10*10^9,100);
d = [20*10^(-4),25*10^(-4),30*10^(-4),35*10^(-4)];
[dw,dh]=size(d);
[Qw,Qh]= size(Q);
res = zeros(dh,Qh);
for i=1:1:dh
    for j=1:1:Qh
        res(i,j)=Pe(p,miu_I,Q(j),sigma_I,d(i));
    end
end

plot(Q,res);

function y = Pe(p,miu_I,Q,sigma_I,d)
    miu_Z_0 = miu_I;
    miu_Z_1 = Q*H_p(d)+miu_I;
    sigma_Z = sigma_I;

    elta = 0;
    if miu_Z_1 ~=miu_Z_0
        elta = sigma_Z^2/(miu_Z_1-miu_Z_0)*log2((1-p)/p)+(miu_Z_1+miu_Z_0)/2;
    end
    

    P_F = 1/2*erfc((elta-miu_Z_0)/sigma_Z/sqrt(2));
    P_M = 1/2*erfc((miu_Z_1-elta)/sigma_Z/sqrt(2));
    y = p*P_M+(1-p)*P_F;
end

function y = H_p(d)
    y = (3/(2*pi*exp(1)))^(3/2)/(d^3);
end


