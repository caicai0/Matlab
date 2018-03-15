function y = FF(beita,r_r,r_d,d_sr,d_rd,Da,Db,t) 
    fun = @(t1,t2) beita.*f(r_r,d_sr,Da,t1).*f(r_d,d_rd,Db,t2-t1);
    y = integral2(fun,0,t,0,t);
end