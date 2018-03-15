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
Qa = 300;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;
Td = 80;

x = 0:10:100;

beita = 3;
%y1 = caculate2(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,dt);
y1 = caculate2(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,1,x);

%y2 = caculate(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y3 = caculate(r_r,r_d,30,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y4 = caculate(r_r,r_d,40,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y5 = caculate(r_r,r_d,50,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);

plot(x,y1,'-o');
grid on
xlabel('Detection threshold at the receiver' )
ylabel('BER')
%set(gca,'xtick',0:10:150)
%axis([0 120 0 0.6])