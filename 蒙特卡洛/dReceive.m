
dt = 30; %��λ�� s
threshold = 

dataLength = length(data);
dx = 0:dt:dt*(dataLength);
dx = dx+dt/2;
[n,xout] = hist(receiveData,dx);



