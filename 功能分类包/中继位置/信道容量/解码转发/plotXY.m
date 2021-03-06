p0 = 0.5;
p1 = 0.5;
Qa= 300;
Qb = 300;
Rr = 5;
Rd = 5;
d_sr = 40;
d_rd = 40;
d_sd = 80;
Da = 242.78;
Db = 242.78;
Unosr = 20;
Unord = 20;
Unosd = 20;
dt = 30;
I = 10;
Q2nosr = 100;
Q2nord = 100;
Q2nosd = 100;


y = [[300,300],[300,600],[600,300],[600,600]];
x = 0.1:0.05:0.9;
f = 1:1:length(x);
for j=1:1:length(y)/2
    Qa = y(j*2-1);
    Qb = y(j*2);
    for i=1:1:length(x) 
        Td = x(i);
        Tr = Td;
        d_sr = d_sd*x(i);
        d_rd = d_sd*(1-x(i));
        f(j,i) = lastF1(p0,p1,Qa,Qb,Rr,Rd,d_sr,d_rd,Da,Db,Unosr,Unord,Q2nosr,Q2nord,dt,I,Tr,Td);
    end
end

plot(x,f);
grid on
legend('Q_{A}=300,Q_{B}=300','Q_{A}=300,Q_{B}=600','Q_{A}=600,Q_{B}=300','Q_{A}=600,Q_{B}=600')
xlabel('Distance Rate d_{s,r}/d_{r,d}')
ylabel('Transmission Rate')
axis([0.1 0.9  0 0.8])