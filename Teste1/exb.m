figure(1);
Ta = 0.01;
f=gcd((4*pi)/(2*pi),(8*pi)/(2*pi));
T = 1/f;
t = (-4*T):Ta:4*T;
N= (T/Ta)*4;
y=5+10*cos((4*pi*t)-(pi/3))+6*sin((8*pi*t)+(pi/2));
[Y,fx] = Espetro(y,Ta);