function f = lastF1(p0,p1,Qa,Qb,Rr,Rd,d_sr,d_rd,Da,Db,Unosr,Unord,Q2nosr,Q2nord,dt,I,Tr,Td)
    U0_sr = U0(p1,Qa,Rr,d_sr,Da,Unosr,dt,I);
    U1_sr = U1(p1,Qa,Rr,d_sr,Da,Unosr,dt,I);
    Q20_sr = Q20(p0,p1,Qa,Rr,d_sr,Da,Q2nosr,dt,I);
    Q21_sr = Q21(p0,p1,Qa,Rr,d_sr,Da,Q2nosr,dt,I);
    
    U0_rd = U0(p1,Qb,Rd,d_rd,Db,Unord,dt,I);
    U1_rd = U1(p1,Qb,Rd,d_rd,Db,Unord,dt,I);
    Q20_rd = Q20(p0,p1,Qb,Rd,d_rd,Db,Q2nord,dt,I);
    Q21_rd = Q21(p0,p1,Qb,Rd,d_rd,Db,Q2nord,dt,I);
    
    %¿ªÊ¼¼ÆËã
    sigma_Z = sqrt((Q20_sr+Q21_sr)/2);
    elta = sigma_Z^2/(U1_sr-U0_sr)*log2((1-p1)/p1)+(U1_sr+U0_sr)/2;
    P_F_sr = 1/2*erfc((elta-U0_sr)/sigma_Z/sqrt(2));
    P_M_sr = 1/2*erfc((U1_sr-elta)/sigma_Z/sqrt(2));
    Pe_sr = p1*P_M_sr+(1-p1)*P_F_sr;
    
    sigma_Z = sqrt((Q20_rd+Q21_rd)/2);
    elta = sigma_Z^2/(U1_sr-U0_rd)*log2((1-p1)/p1)+(U1_rd+U0_rd)/2;
    P_F_rd = 1/2*erfc((elta-U0_rd)/sigma_Z/sqrt(2));
    P_M_rd = 1/2*erfc((U1_rd-elta)/sigma_Z/sqrt(2));
    Pe_rd = p1*P_M_rd+(1-p1)*P_F_rd;
    
%      f = (1- Pe_sr)*Pe_rd+Pe_sr*(1- Pe_rd);
    f = ((1-P_M_sr)*P_M_rd +P_F_sr*(1-P_M_rd) +P_M_sr*(1-P_F_rd) +(1-P_F_sr)*P_F_rd)/2;
end