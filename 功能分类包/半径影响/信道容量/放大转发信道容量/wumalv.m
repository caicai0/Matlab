clear all
close all
r_r = 5;
r_d = 5;
%d_sr1 = 10;
%d_rd1 = 30;
%d_sr2 = 20;
%d_rd2 = 20;
%d_sr3 = 30;
%d_rd3 = 10;
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
y1 = caculate1(r_r,r_d,10,30,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y2 = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
y3 = caculate1(r_r,r_d,30,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y4 = caculate(r_r,r_d,40,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
%y5 = caculate(r_r,r_d,50,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
plot(x,y1,'-o',x,y2,'-<',x,y3,'-*');
%plot(x,y1,x,y2,x,y3);
%semilogy(x,y1,'-o',x,y2,'-<',x,y3,'-*');
grid on
xlabel('Detection Threshold' )
ylabel('BER')
legend('d_{sr}=10¦Ìm,d_{rd}=30¦Ìm','d_{sr}=20¦Ìm,d_{rd}=20¦Ìm','d_{sr}=30¦Ìm,d_{rd}=10¦Ìm')
%set(gca,'xtick',0:10:150)
axis([0 120 0 0.5])