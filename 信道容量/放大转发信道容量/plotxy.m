
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

x = [10:10:600];

y = [0.5];

beita = 3;
r_r = 5;
r_d = 5;
y1 = caculate(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
r_r = 5;
r_d = 8;
y2 = caculate(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
r_r = 8;
r_d = 5;
y3 = caculate(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
r_r = 8;
r_d = 8;
y4 = caculate(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x,y);
%y5 = caculate(r_r,r_d,50,10,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,x);
% %plot(x,y1,'-o',x,y2,'-<',x,y3,'-*');
plot(x,y1,x,y2,'-O',x,y3,'-<',x,y4,'--');
% plot(y,y1',y,y2','-O',y,y3','-<',y,y4','--');
% mesh(x,y,y1);
% grid on
% xlabel('Detection threshold at the receiver' )
% ylabel('Transmission rate')
% %set(gca,'xtick',0:10:150)
% axis([0 200 0 1])