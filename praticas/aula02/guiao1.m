Ta = 0.01;
t = linspace(0,5);
x = 2*sin(4*pi.*t);
y = cos(1o*pi.*t);
z = x .*y;

plot(t,x,'r');
figure;
plot(t,y,'b');
figure;
plot(t,z,'g','.')