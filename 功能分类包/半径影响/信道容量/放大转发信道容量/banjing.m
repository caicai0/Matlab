clear all
close all
r_r = 5;
r_d = 5;
Da = 242.78;
dt = 30;
I = 10;
p1 = 0.5;
p0 = 0.5;
Qa = 300;
Uno_a = 20;
Uno_b = 20;
Q2no_a = 100;
Q2no_b = 100;


x = 0:1:10;

beita = 3;

y1 = caculate2(r_r,r_d,20,20,Da,Db,dt,I,p1,p0,beita,Qa,Uno_a,Uno_b,Q2no_a,Q2no_b,1,x);



plot(x,y1,'-o');
grid on
xlabel('radius at the receiver' )
ylabel('BER')
