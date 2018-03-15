function y = caculate1(r_r,r_d,d_sr,d_rd,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x)
    F = zeros(1,I+1);
    for i=1:1:I+1
        F(1,i)=FF(beita,r_r,r_d,d_sr,d_rd,Da,Db,dt*i);
    end

    f = 1:1:length(x);
    for i=1:1:length(x)
        Td = x(1,i);
        f(1,i) = lastF1(F,r_r,d_rd,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,Td);
    end
    y = f;
end
