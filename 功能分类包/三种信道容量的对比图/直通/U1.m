function y = U1(p,Q,r,d,D,Uno,dt,I)
    sum = 0;
    for i = 1:1:I 
        q = F(r,d,D,(i+1)*dt)-F(r,d,D,i*dt);
        sum = sum+q;
    end
    y = p*Q*sum+ Q*F(r,d,D,dt) +Uno;
end

