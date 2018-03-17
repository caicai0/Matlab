clear;
dt = 7; %单位秒 s
I = 10;  %信道记忆
Qa = 300; %发送端一次发送分子数
Qb = 300;%中继一次发送分子数
Rr = 5;   %中继吸收半径  um
Rd = 5;  %接收端吸收半径  um
d = 20;  %距离     um
Da = 242.72; %a溶液粘度   um^2/s
Db = 242.72; %b溶液粘度   um^2/s

dataLength = 10000;%待发送的数据长度

Qa = 250;
makeData;
save data_Q250;






