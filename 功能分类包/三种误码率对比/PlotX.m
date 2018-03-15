cd 直通
plotXy;
zht = f;
cd ..

cd 解码转发
plotXY;
jm = f;
cd ..

cd 放大转发信道容量
plotxy;
fd = y2;
cd ..

plot(x,zht,'-o',x,jm,'-^',x,fd,'-*');
legend('Direct Transmission','DF strategy');
%plot(x,zht,'-o',x,jm,'-^',x,fd,'-*');
legend('直通','解码中继','放大中继');
%semilogy(x,zht,'-o',x,fd,'*');
% grid on
xlabel('Detection Threshold')
ylabel('BER')
% axis([0 120 10^-2 0.5])
%set(gca,'XTick',0:10:200)