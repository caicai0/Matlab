%���յ��ĸ���
receiveMaxP = F(Rr,d,Da,dt*I);
%��������
data = 1:1:dataLength;
for i = 1:1:dataLength 
    data(i) = unidrnd(2)-1;
end

%׼�������ܶ����� f,x
x = 0:0.1:dt*I;
f = x;
for i = 1:1:length(x)
    f(i)=fhit(Rr,d,Da,x(i));
end

receiveData = [];
hwait=waitbar(0,'��ʼ');
for i=1:1:dataLength
    bit_send = data(i);%ȡ��һλ
    str=['������',num2str(i),'/',num2str(dataLength)];
    waitbar(i/dataLength,hwait,str);
    if bit_send == 1
        oneBitData = dataForOneBit(dt*(i-1),Qa,receiveMaxP,x,f);
        receiveData = [receiveData;oneBitData];
    end
end
close(hwait);
receiveData = receiveData(receiveData~=0);
receiveData = sort(receiveData);
disp('ȥ������');