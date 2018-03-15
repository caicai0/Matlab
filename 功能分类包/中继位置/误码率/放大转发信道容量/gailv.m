clear all
close all
r_r = 5;
r_d = 5;
Da = 242.78;
Db = 242.78;
dt = 30;
I = 10;
p11 = 0;
p01 = 1;
p12 = 0.5;
p02 = 0.5;
p13 = 1;
p03 = 0;
Qa = 300;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;

x = 0:5:200;

beita = 3;
y1 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p11,p01,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y2 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p12,p02,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y3 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p13,p03,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);


plot(x,y1,'-o',x,y2,'-<',x,y3,'-*');
grid on
xlabel('Detection threshold at the receiver' )
ylabel('BER')
legend('p1=0,p0=1','p1=0.5,p0=0.5','p1=1,p0=0')
%set(gca,'xtick',0:10:150)
axis([0 160 0 0.5])