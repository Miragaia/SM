load('Guitar02.mat')
fa= 1/Ta;
sound(x, fa)

t=0:Ta:length(x)/fa-Ta;
figure(1)
plot(t,x)
xlabel("Tempo (s)")
ylabel("Sinal")
disp("O tempo total da musica em segundos é: ")
max(t)