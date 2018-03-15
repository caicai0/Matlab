function y = lastF(F,r_r,d_sr,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,Td)
    q = zeros(1,I);
    for i=1:1:I
        q(1,i)=F(1,i+1)-F(1,i);
    end
    
    sumQ = 0;
    for i=1:1:I
        sumQ = sumQ+q(1,i);
    end
    
    sumQ1 = 0;
    for i = 1:1:I
        sumQ1 = sumQ1+q(1,i)*(1-q(1,i));
    end
    
    sumQ2 = 0;
    for i = 1:1:I
        sumQ2 = sumQ2+q(1,i)^2;
    end
    
    U0_srd = p1*Qa*sumQ + beita*Uno_a*r_r/(r_r+d_sr)+Uno_b;
    U1_srd = Qa*F(1,1)+p1*Qa*sumQ+beita*Uno_a*r_r/(r_r+d_sr)+Uno_b;
    Q20_srd = p1*Qa*sumQ1+p1*p0*Qa^2*sumQ2+(beita*r_r/(r_r+d_sr))^2*Q2no_a+Q2no_b;
    Q21_srd = Qa*F(1,1)*(1-F(1,1))+p1*Qa*sumQ1+p1*p0*Qa^2*sumQ2+(beita*r_r/(r_r+d_sr))^2*Q2no_a+Q2no_b;
    
    Q2_srd = (Q20_srd+Q21_srd)/2;
    sigma_Z = sqrt(Q2_srd);
    elta = sigma_Z^2/(U1_srd-U0_srd)*log2((1-p1)/p1)+(U1_srd+U0_srd)/2;
    P_F = 1/2*erfc((elta-U0_srd)/sigma_Z/sqrt(2));
    P_M = 1/2*erfc((U1_srd-elta)/sigma_Z/sqrt(2));
    y = p1*P_M+(1-p1)*P_F;
    
    
%     P0=1/2+1/4*erf((Td-U0_srd)/sqrt(2*Q20_srd))+1/4*erf((Td-U1_srd)/sqrt(2*Q21_srd));
%     P1=1-P0;
%     P_11=1/2-1/2*erf((Td-U1_srd)/sqrt(2*Q21_srd));
%     P_01=1/2+1/2*erf((Td-U1_srd)/sqrt(2*Q21_srd));
%     P_10=1/2-1/2*erf((Td-U0_srd)/sqrt(2*Q20_srd));
%     P_00=1/2+1/2*erf((Td-U0_srd)/sqrt(2*Q20_srd));
%     %H1=-P0*log2(P0)-P1*log2(P1);
%     %H2=-P_11*log2(P_11)-P_01*log2(P_01)-P_10*log2(P_10)-P_00*log2(P_00);
%     H1=-P0*localLog2(P0)-P1*localLog2(P1);
%     H2=-1/2.*P_11*localLog2(P_11)-1/2.*P_01*localLog2(P_01)-1/2.*P_10*localLog2(P_10)-1/2.*P_00*localLog2(P_00);
%     C=H1-H2;
%    % if H1<H2
%       %  C=0;
%     %end
%     y = C;
end

