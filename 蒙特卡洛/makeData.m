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

receiveData = cells(dataLength);
disp('��ʼ');
for i=1:1:10000
    bit_send = data(i);%ȡ��һλ
    if bit_send == 1
        oneBitData = dataForOneBit(dt*(i-1),Qa,receiveMaxP,x,f);
        oneBitLength = length(oneBitData);
        receiveData(i) = oneBitData;
    end
end
disp('ѭ��');
receiveData = receiveData(receiveData~=0);
receiveData = sort(receiveData);
disp('ȥ������');