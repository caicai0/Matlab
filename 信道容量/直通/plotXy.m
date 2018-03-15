p0 = 0.5;
p1 = 0.5;
Qa= 300;
Qb = 300;
Rr =5;
Rd = 5;
d = 80;
Da = 242.72;
Db = 242.72;
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
    Qa = x(i);
    f(i) = lastF(p0,p1,Qa,Rr,d,Da,Unosr,Q2nosr,dt,I,Tr);
end

plot(x,f);
xlabel('receiver threshold');
ylabel('bit error rate');