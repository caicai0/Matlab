function y = Q21(p0,p1,Q,r,d,D,Q2no,dt,I)
    sum = 0;
    sum2 = 0;
    for i = 1:1:I 
        q = F(r,d,D,(i+1)*dt)-F(r,d,D,i*dt);
        sum = sum+(q*(1-q));
        sum2 = sum2+(q^2);
    end
    P_1 = F(r,d,D,dt);
    y = Q*P_1*(1-P_1)+p1*Q*sum+p1*p0*Q.^2*sum2+Q2no;
end
