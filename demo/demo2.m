dx = 0.1;
Num = 10000;
x = -4:dx:4;
y = randn(Num,1);
[n,xout] = hist(y,x);
pdf = n/Num/dx;
bar(xout,pdf);
legend('Empirical PDF via hist', 'Analytical PDF via normpdf');
axis tight