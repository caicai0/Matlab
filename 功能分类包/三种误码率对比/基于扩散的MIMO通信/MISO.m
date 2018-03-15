p=1/2;
miu_I = 2*10^16;
Q = 2*10^9;
sigma_I = 0.3*miu_I;
d = 20;
M = 4;

Q_m = [Q,Q,Q,Q];
d_m = [20,30,40,50];
y=Pe(p,miu_I,Q_m,sigma_I,d_m,M);

Q_m = linspace(1*10^9,6*10^9,100);
d_m = [20*10^(-4),20*10^(-4),20*10^(-4),20*10^(-4)];
mode = [1,2];% 1.Selection Combining  2.Maximum-ratio Combining 3.Decision Fusion
[dw,dh]=size(mode);
[Qw,Qh]= size(Q_m);
res = zeros(dh,Qh);
for i=1:1:dh
    if i==1
        [min_d,index]=min(d_m);
        for j=1:1:Qh
            Q=Q_m(j);
            res(i,j)=Pe(p,miu_I,[Q],sigma_I,[min_d],1);
        end
    elseif i==2
        for j=1:1:Qh
            Q=Q_m(j);
            res(i,j)=Pe(p,miu_I,[Q,Q,Q,Q],sigma_I,d_m,M);
        end
    elseif i==3
        
    end
    
end

plot(Q_m,res);


function y = Pe(p,miu_I,Q_m,sigma_I,d_m,M)
    miu_Z_0 = miu_I;
    
    miu_Z_1 = 0;
    for i=1:1:M
        miu_Z_1 = miu_Z_1+Q_m(i)*H_p(d_m(i));
    end
    miu_Z_1 = miu_Z_1+miu_I;
    
    sigma_Z = sigma_I;

    elta = sigma_Z^2/(miu_Z_1-miu_Z_0)*log2((1-p)/p)+(miu_Z_1+miu_Z_0)/2;
    
    P_F = 1/2*erfc((elta-miu_Z_0)/sigma_Z/sqrt(2));
    P_M = 1/2*erfc((miu_Z_1-elta)/sigma_Z/sqrt(2));
    y = p*P_M+(1-p)*P_F;
end

function y = H_p(d)
    y = (3/(2*pi*exp(1)))^(3/2)/(d^3);
end


