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

Qas = [300,600];
Qbs = 100:10:600;
x = 0.1:0.01:0.9;
f = 0;
for j=1:1:length(Qas)
    Qa = Qas(j);
    for k=1:1:length(Qbs)
        Qb = Qbs(k);
        y = 1:1:length(x);
        for i=1:1:length(x) 
            Td = x(i);
            Tr = Td;
            d_sr = d_sd*x(i);
            d_rd = d_sd*(1-x(i));
            y(i) = lastF1(p0,p1,Qa,Qb,Rr,Rd,d_sr,d_rd,Da,Db,Unosr,Unord,Q2nosr,Q2nord,dt,I,Tr,Td);
        end
        maxy = max(y);
        index = find(y == maxy);
        f(j,k) = x(index(1,1));
    end
end



mesh(Qbs,Qas,f);