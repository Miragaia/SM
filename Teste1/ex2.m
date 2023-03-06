Ta = 0.01;

% a)
f=gcd((4*pi)/(2*pi),(8*pi)/(2*pi));
T=1/f;
Np = 20;
N=round(Np*T/Ta);
t=(0:N-1)*Ta;

x = 5+10*cos((4*pi*t)-(pi/3))+6*sin((8*pi*t)-(pi/2));

[X,f]=Espetro(x,Ta);
