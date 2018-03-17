
dt = 30; %µ•Œª√Î s

dataLength = length(data);
dx = 0:dt:dt*(dataLength);
dx = dx+dt/2;
[n,xout] = hist(receiveData,dx);



