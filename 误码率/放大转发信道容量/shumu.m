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
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;

x =300:50:500;

beita = 3;
for i=1:1:length(x)
y1(1,i) = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,x(1,i),Uno_a,Uno_b,Q2no_a,Q2no_b,40);
y2(1,i) = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,x(1,i),Uno_a,Uno_b,Q2no_a,Q2no_b,60);
y3(1,i) = caculate1(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,x(1,i),Uno_a,Uno_b,Q2no_a,Q2no_b,80);
end

plot(x,y1,'-o',x,y2,'-<',x,y3,'-*');
grid on
xlabel('the molecular number' )
ylabel('BER')
legend('Td=40','Td=60','Td=80')
axis([300 500 0 0.5])