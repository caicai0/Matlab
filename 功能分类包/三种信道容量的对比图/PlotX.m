cd ֱͨ
plotXy;
zht = f;
cd ..

cd ����ת��
plotXY;
jm = f;
cd ..

cd �Ŵ�ת���ŵ�����
plotxy;
fd = y2;
cd ..

plot(x,zht,'-o',x,jm,'-^',x,fd,'-*');
legend('Direct Transmission','DF strategy');
%plot(x,zht,'-o',x,jm,'-^',x,fd,'-*');
legend('ֱͨ','�����м�','�Ŵ��м�');
%semilogy(x,zht,'-o',x,fd,'*');
% grid on
xlabel('Detection Threshold')
ylabel('BER')
% axis([0 120 10^-2 0.5])
%set(gca,'XTick',0:10:200)