function y = Pe(Tr,U1sr,Q1sr,U0sr,Q0sr,Td,U0rd,Q0rd,U1rd,Q1rd)
   %y = Pe(Tr,U1sr,Q1sr,U0sr,Q0sr,Td,U0rd,U0sd,Q0rd,Q0sd,U1rd,U1sd,Q1sd,Q1rd)
   % y = 1/2+(1/8)*((erf((Tr-U1sr)/sqrt(2*Q1sr))-erf((Tr-U0sr)/sqrt(2*Q0sr))))*((erf((Td-U0rd-U0sd)/sqrt(2*(Q0rd+Q0sd)))-erf((Td-U1rd-U1sd)/sqrt(2*(Q1rd+Q1sd)))));
   
   
   
    y = 1/2+(1/8)*((erf((Tr-U1sr)/sqrt(2*Q1sr))-erf((Tr-U0sr)/sqrt(2*Q0sr))))*((erf((Td-U0rd)/sqrt(2*Q0rd))-erf((Td-U1rd)/sqrt(2*Q1rd))));
end

