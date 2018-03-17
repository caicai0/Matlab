
dt_show = dt;
data_show = data;
dataLength_show = dataLength;
receiveData_show = receiveData;


dx = 0:dt_show:dt_show*(dataLength_show);
dx = dx+dt_show/2;
[n,xout] = hist(receiveData_show,dx);
bar(xout,n);

for i = 1:1:dataLength
    str = num2str(data_show(i));
    color = 'green';
    if data_show(i)==1
        color = 'red';
    end
    text(xout(i)-dt/2,n(i)+0.5,str,'Color',color,'FontSize',7);
end