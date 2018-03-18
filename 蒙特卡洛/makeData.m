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

receiveData = [];
hwait=waitbar(0,'开始');
for i=1:1:dataLength
    bit_send = data(i);%取出一位
    str=['计算中',num2str(i),'/',num2str(dataLength)];
    waitbar(i/dataLength,hwait,str);
    if bit_send == 1
        oneBitData = dataForOneBit(dt*(i-1),Qa,receiveMaxP,x,f);
        receiveData = [receiveData;oneBitData];
    end
end
close(hwait);
receiveData = receiveData(receiveData~=0);
receiveData = sort(receiveData);
disp('去零排序');