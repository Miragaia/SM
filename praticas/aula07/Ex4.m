clear all

load("Guitar02.mat")
fa=1/Ta;
[X, f] = Espetro(x, Ta);


newX = Filter(X, f, [867.98 868.02]);
newY = Filter(X, f, [1299.98 1300.02]);

[reconX, t] = Reconstroi(newX,f);
[reconY, t] = Reconstroi(newY,f);


sound(reconX,fa)
sound(reconY,fa)
figure(1)
plot(real(t(1:500)), reconX(1:500));xlabel("Tempo (s)"); ylabel("Sinal");
hold on
plot(real(t(1:500)), reconY(1:500));xlabel("Tempo (s)"); ylabel("Sinal");
legend("Sinal Sinusoide de Freq 868Hz","Sinal Sinusoide de Freq 1300Hz")
