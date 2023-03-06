load("Guitar02.mat");
fa_new = fa/2;
sound(x, fa_new);
Ta = 1/fa_new;

figure(1)
Espetro(x,Ta);
title("Espetro das notas musicais")
xlim([-5e3 5e3])
disp("O tempo total da musica em segundos é: ")
max(t)

t=0:Ta:length(x)/fa_new-Ta;
figure(2)
plot(t,x)
xlabel("Tempo (s)")
ylabel("Sinal")
