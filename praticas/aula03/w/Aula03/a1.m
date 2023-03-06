%x(t)=A*sen(2pi*f0*t)    f0=frequencia    T=1/f0
ta=0.001;
t = 0:ta:2;  % o 2 é 4* T
x=2*sin(4*pi*t);
plot(t,x);
xlabel("Tempo (s)")
ylabel("Amplitude (A)")
title("Sinal A")