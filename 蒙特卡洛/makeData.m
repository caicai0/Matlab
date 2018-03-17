%接收到的概率
receiveMaxP = F(Rr,d,Da,dt*I);
%生成数据
data = 1:1:dataLength;
for i = 1:1:dataLength 
    data(i) = unidrnd(2)-1;
end

%准备概率密度曲线 f,x
x = 0:0.1:dt*I;
f = x;
for i = 1:1:length(x)
    f(i)=fhit(Rr,d,Da,x(i));
end

receiveData = cells(dataLength);
disp('开始');
for i=1:1:10000
    bit_send = data(i);%取出一位
    if bit_send == 1
        oneBitData = dataForOneBit(dt*(i-1),Qa,receiveMaxP,x,f);
        oneBitLength = length(oneBitData);
        receiveData(i) = oneBitData;
    end
end
disp('循环');
receiveData = receiveData(receiveData~=0);
receiveData = sort(receiveData);
disp('去零排序');