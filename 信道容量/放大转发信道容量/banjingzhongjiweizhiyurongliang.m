clear all
close all
r_r1 = 30;
r_d1 = 30;
r_r2 = 20;
r_d2 = 20;
%r_r = 30;
%r_d = 30;
Da = 78;
Db = 78;
dt = 50;
I = 10;
p1 = 0.5;
p0 = 0.5;
beita = 2;
Qa = 300;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;
%Td = 100;
x = 0:5:150;
beita = 1.5;
y1 = caculate(r_r1,r_d1,10,50,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y2 = caculate(r_r1,r_d1,20,40,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y3 = caculate(r_r1,r_d1,30,30,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y4 = caculate(r_r2,r_d2,40,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y5 = caculate(r_r,r_d,50,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);

plot(x,y1,'-o',x,y2,'-<',x,y3,'-*',x,y4,'-^');
grid on
xlabel('Detection threshold at the receiver' )
ylabel('Transmission rate')
set(gca,'xtick',0:10:150)
