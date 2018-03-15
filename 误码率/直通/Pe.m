function y = Pe(Tr,U1sr,Q1sr,U0sr,Q0sr)
    y = 1/2+(1/4)*((erf((Tr-U1sr)/sqrt(2*Q1sr))-erf((Tr-U0sr)/sqrt(2*Q0sr))));
end
