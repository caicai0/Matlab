r_r = 5;
r_d = 5;
Da = 242.78;
Db = 242.78;
dt1 = 1;
dt2 = 2;
dt3 = 3;
dt4 = 4;
dt5 = 5;
dt6 = 6;
dt7 = 7;
dt8 = 8;
dt9 = 9;
dt10 = 10;
dt11 = 11;
dt12 = 12;
I = 10;
p1 = 0.5;
p0 = 0.5;
Qa = 300;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;

x = 0:50:1000;
y = [0.5];

beita = 8;

dt = 1:1:12;
y = 1:1:length(dt);
for i=1:1:length(dt)
    dti = dt(i);
    yi = caculate(r_r,r_d,20,20,Da,Db,dti,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
    y(i)=yi(1,1);
end
plot(dt,y);

y1 = caculate(r_r,r_d,20,20,Da,Db,dt1,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y2 = caculate(r_r,r_d,20,20,Da,Db,dt2,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y3 = caculate(r_r,r_d,20,20,Da,Db,dt3,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y4 = caculate(r_r,r_d,20,20,Da,Db,dt4,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y5 = caculate(r_r,r_d,20,20,Da,Db,dt5,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y6 = caculate(r_r,r_d,20,20,Da,Db,dt6,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y7 = caculate(r_r,r_d,20,20,Da,Db,dt7,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y8 = caculate(r_r,r_d,20,20,Da,Db,dt8,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y9 = caculate(r_r,r_d,20,20,Da,Db,dt9,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y10 = caculate(r_r,r_d,20,20,Da,Db,dt10,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y11 = caculate(r_r,r_d,20,20,Da,Db,dt11,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
y12 = caculate(r_r,r_d,20,20,Da,Db,dt12,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
plot(x,y1,x,y2,x,y3,x,y4,x,y5,x,y6,x,y7,x,y8,x,y9,x,y10,x,y11,x,y12);
grid on
xlabel('Molecular Number/ Q' )
ylabel('Transmission Rate')
legend('T=1us','T=2us','T=3us','T=4us','T=5us','T=6us','T=7us','T=8us','T=9us','T=10us','T=11us','T=12us')
%axis([0 600 0 0.9])