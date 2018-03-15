p0 = 0.5;
p1 = 0.5;
Qa= 300;
Qb = 300;
Rr = 5;
Rd = 5;
d_sr = 20;
d_rd = 20;
d_sd = 40;
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

x = 0:10:1000;
f = 1:1:length(x);
for i=1:1:length(x) 
    Td = x(i);
    Tr = Td;
    Qa=x(i);
    Qb=x(i);
    f(i) = lastF1(p0,p1,Qa,Qb,Rr,Rd,d_sr,d_rd,Da,Db,Unosr,Unord,Q2nosr,Q2nord,dt,I,Tr,Td);
end

semilogy(x,f);