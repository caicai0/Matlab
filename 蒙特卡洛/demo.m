r = 5;
d = 80;
D = 242.72;

l = 1000;

x = 1:1:l;
f = 1:1:l;
for i = 1:1:l
    f(i) = fhit(r,d,D,i);
end
plot(x,f);