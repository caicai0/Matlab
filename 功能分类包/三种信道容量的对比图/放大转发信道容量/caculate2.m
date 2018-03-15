function y = caculate2(r_r,r_d,d_sr,d_rd,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y)
    f = zeros(length(y),length(x));    
    for j=1:1:length(y)
        dt = y(1,j);
        F = zeros(1,I+1);
        for i=1:1:I+1
            F(1,i)=FF(beita,r_r,r_d,d_sr,d_rd,Da,Db,dt*i);
        end

        
        for i=1:1:length(x)
            Td = 50;
            f(j,i) = lastF1(F,r_r,d_rd,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,Td);
        end
    end
    y = f;
end
