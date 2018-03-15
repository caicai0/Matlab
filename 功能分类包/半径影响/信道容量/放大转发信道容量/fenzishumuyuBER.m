clear all
close all
r_r = 5;
r_d = 5;
Da = 242.78;
Db = 242.78;
dt = 30;
I = 10;
p1 = 0.5;
p0 = 0.5;
Qa1 = 300;
Qa2 = 500;
Qa3 = 800;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;

x = 0:5:200;

beita = 3;
y1 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa1,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y2 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa2,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y3 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa3,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y4 = caculate(r_r,r_d,40,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y5 = caculate(r_r,r_d,50,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);

plot(x,y1,'-o',x,y2,'-<',x,y3,'-*');
grid on
xlabel('Detection threshold at the receiver' )
ylabel('BER')
legend('Q=300','Q=500','Q=800')
%set(gca,'xtick',0:10:150)
axis([0 160 0 0.5])