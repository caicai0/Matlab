p=1/2;
miu_I = 2*10^16;
Q = 2*10^9;
sigma_I = 0.3*miu_I;
d = 20;

miu_I_n = [miu_I,miu_I,miu_I];
sigma_I_n = [sigma_I,sigma_I,sigma_I];
d_n = [d,d,d];
N = 3;

y = Pe(p,miu_I_n,Q,sigma_I_n,d_n,N);

function y = Pe(p,miu_I_n,Q,sigma_I_n,d_n,N)
    Pi_sigma_I = 1;
    for i=1:1:N
        Pi_sigma_I = Pi_sigma_I*sigma_I_n(i)^2;
    end
    
    miu_Z_0 = 0;
    for i=1:1:N
        a_n = H_p(d_n(i))*Pi_sigma_I/sigma_I_n(i)^2;
        miu_Z_0 = miu_Z_0+a_n*miu_I_n(i);
    end
    
    miu_Z_1 = 0;
    for i=1:1:N
        a_n = H_p(d_n(i))*Pi_sigma_I/sigma_I_n(i)^2;
        miu_Z_1 = miu_Z_1 + a_n*(Q*H_p(d_n(i))+miu_I_n(i));
    end
    
    sigma_Z = 0;
    for i=1:1:N
        a_n = H_p(d_n(i))*Pi_sigma_I/sigma_I_n(i)^2;
        sigma_Z = sigma_Z + a_n^2*sigma_I_n(i)^2;
    end

    elta = sigma_Z^2/(miu_Z_1-miu_Z_0)*log2((1-p)/p)+(miu_Z_1+miu_Z_0)/2;

    P_F = 1/2*erfc((elta-miu_Z_0)/sigma_Z/sqrt(2));
    P_M = 1/2*erfc((miu_Z_1-elta)/sigma_Z/sqrt(2));
    y = p*P_M+(1-p)*P_F;
end

function y = H_p(d)
    y = (3/(2*pi*exp(1)))^(3/2)/(d^3);
end


