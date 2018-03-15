clear all
close all
r_r1 = 5;
r_d1 = 5;
r_r2 = 8;
r_d2 = 8;
r_r3 = 10;
r_d3 = 10;
Da = 242.78;
Db = 242.78;
dt = 30;
I = 10;
p1 = 0.5;
p0 = 0.5;
Qa = 300;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;
%Td = 100;

x = 0:5:200;

beita = 3;
y1 = caculate1(r_r1,r_d1,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y2 = caculate1(r_r2,r_d2,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y3 = caculate1(r_r3,r_d3,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y4 = caculate(r_r,r_d,40,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y5 = caculate(r_r,r_d,50,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
plot(x,y1,'-o',x,y2,'-<',x,y3,'-*');
%plot(x,y1,x,y2,x,y3);
%semilogy(x,y1,'-o',x,y2,'-<',x,y3,'-*')
grid on
xlabel('Detection threshold at the receiver' )
ylabel('BER')
%set(gca,'xtick',0:10:150)
axis([0 160 10^-2 0.5])