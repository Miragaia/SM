%Guiao 7 
%Exercicio 1
disp('Exercicio 1');
load('Guitar03.mat');
MaxDelay = 0.3;
NumComp = 15;
y = Chorus(x,fa,MaxDelay,NumComp);
sound(y,fa);
figure(1);
Ta=1/fa;
figure(2);
[Y,fy] = Espetro(y,Ta);
xlim([-2e3 2e3]);
