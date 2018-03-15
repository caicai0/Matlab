function y = caculate(r_r,r_d,d_sr,d_rd,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y)
    F = zeros(1,I+1);
    for i=1:1:I+1
        F(1,i)=FF(beita,r_r,r_d,d_sr,d_rd,Da,Db,dt*i);
    end

    f = 1:1:length(x);
    for j=1:1:length(y)
        d_sd = d_sr+d_rd;
        d_sr = d_sd*y(j);
        d_rd = d_sd*(1-y(j));
        for i=1:1:length(x)
            Qa = x(1,i);
            Td = 300;
            f(j,i) = lastF(F,r_r,d_rd,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,Td);
        end
    end
    
    y = f;
end
