function f = lastF(p0,p1,Qa,Rr,d_sr,Da,Unosr,Q2nosr,dt,I,Tr)
    U0_sr = U0(p1,Qa,Rr,d_sr,Da,Unosr,dt,I);
    U1_sr = U1(p1,Qa,Rr,d_sr,Da,Unosr,dt,I);
    Q20_sr = Q20(p0,p1,Qa,Rr,d_sr,Da,Q2nosr,dt,I);
    Q21_sr = Q21(p0,p1,Qa,Rr,d_sr,Da,Q2nosr,dt,I);
    
    %误码率
    sigma_Z = sqrt((Q20_sr+Q21_sr)/2);
    elta = sigma_Z^2/(U1_sr-U0_sr)*log2((1-p1)/p1)+(U1_sr+U0_sr)/2;
    P_F_sr = 1/2*erfc((elta-U0_sr)/sigma_Z/sqrt(2));
    P_M_sr = 1/2*erfc((U1_sr-elta)/sigma_Z/sqrt(2));
    Pe_sr = p1*P_M_sr+(1-p1)*P_F_sr;
    
    %信道容量
    p = p1;
    P_Y_0 = p*(1-P_M_sr)+(1-p)*P_F_sr;
    P_Y_1 = p*P_M_sr+(1-p)*(1-P_F_sr);
    H_Y = -P_Y_0*log2(P_Y_0)-P_Y_1*log2(P_Y_1);
    H_Y_X = -p*((1-P_M_sr)*log2(1-P_M_sr)+P_M_sr*log2(P_M_sr))-(1-p)*((1-P_F_sr)*log2(1-P_F_sr)+P_F_sr*log2(P_F_sr));
    H_X_Y = H_Y-H_Y_X;
    
%     f = Pe_sr;
    f = H_X_Y;
%     f = Pe(Tr,U1sr,Q21sr,U0sr,Q20sr);
end

