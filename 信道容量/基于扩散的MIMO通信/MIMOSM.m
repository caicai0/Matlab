p=1/2;
miu_I = 2*10^16;
Q = 2*10^9;
sigma_I = 0.3*miu_I;
d = 20;
L = 50;



y = Pe(p_m,miu_I_n,Q_m,sigma_I_n,d_mn,M,N,L)

function y = Pe(p_m,miu_I_n,Q_m,sigma_I_n,d_mn,M,N,L)
    P_e = 0;
    for n = 1:1:N 
        p_n = Pe_n(p_m,miu_I_n,Q_m,sigma_I_n,d_mn,M,N,n);
        P_e = P_e + (1-p_n)^L;
    end
    y = P_e;
end

function y = Pe_n(p_m,miu_I_n,Q_m,sigma_I_n,d_mn,M,N,n)
    miu_Z_0 = miu_I_n(n);
    for m=1:1:M
        if m ~= n
            miu_Z_0 = miu_Z_0 +p_m(m)*Q_m(m)*H_p(d_mn(m,n)); 
        end
    end
    
    miu_Z_1 = Q_m(n)*H_p(d_mn(nn))+miu_Z_0;
    
    
    sigma_Z_2 = sigma_I_n(n);
    for m=1:1:M
        if m ~= n
            sigma_Z_2 = sigma_Z_2 +(p_m(m)-p_m(m)^2)*Q_m(m)^2*H_p(d_mn(m,n))^2; 
        end
    end
    sigma_Z = sqrt(sigma_Z_2);

    elta = sigma_Z^2/(miu_Z_1-miu_Z_0)*log2((1-p)/p)+(miu_Z_1+miu_Z_0)/2;

    P_F = 1/2*erfc((elta-miu_Z_0)/sigma_Z/sqrt(2));
    P_M = 1/2*erfc((miu_Z_1-elta)/sigma_Z/sqrt(2));
    y = p*P_M+(1-p)*P_F;
end

function y = H_p(d)
    y = (3/(2*pi*exp(1)))^(3/2)/(d^3);
end


