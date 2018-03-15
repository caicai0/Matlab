function y = lastF1(F,r,d_sr,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,Td)

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
    U0_srd = p1*Qa*sumQ + beita*Uno_a*r/(r+d_sr)+Uno_b;
    U1_srd = Qa*F(1,1)+p1*Qa*sumQ+beita*Uno_a*r/(r+d_sr)+Uno_b;
    Q20_srd = p1*Qa*sumQ1+p1*p0*Qa^2*sumQ2+(beita*r/(r+d_sr))^2*Q2no_a+Q2no_b;
    Q21_srd = Qa*F(1,1)*(1-F(1,1))+p1*Qa*sumQ1+p1*p0*Qa^2*sumQ2+(beita*r/(r+d_sr))^2*Q2no_a+Q2no_b;
    
    Pe = 1/2+1/2*p0*erf((Td-U1_srd)/sqrt(2*Q21_srd))-1/2.*p1*erf((Td-U0_srd)/sqrt(2*Q20_srd));
    y = Pe;
end