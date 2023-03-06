load('Guitar02.mat')

x_new=zeros(500,1);
for i=1:500
    x_new(i)=x(i);
end

if abs(min(x_new))<abs(max(x_new))
    amp=abs(max(x_new));
else
    amp=abs(min(x_new));
end

V_FS=2*amp;
nb=4;
delta = V_FS/2^nb;

[index, quantz]=quantiz(x_new,-amp:delta:amp,-amp-delta/2:delta:amp+delta/2);

plot(0:499,x_new)
hold on
plot(0:499,quantz)