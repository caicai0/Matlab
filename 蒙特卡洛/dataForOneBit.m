function data =  dataForOneBit(startTime,count,receiveMaxP,x,f)
    molecules_send = rand(1,count);
    receiveCount = 0;
    for m = molecules_send
        if m<=receiveMaxP
            receiveCount=receiveCount+1;
        end
    end
    a = 0;
    b = x(end);
    data = frnd(x,f,a,b,receiveCount);
    data = data + startTime;
end