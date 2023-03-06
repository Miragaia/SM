%Guiao 6 %Primeiro exercicio
%Ex1
disp('Exercicio 1');
load('Guitar03.mat');
sound(x,fa);

%Ex2
disp('Exercicio 2');
Ta = 1/fa;
[X,f]= Espetro(x,Ta);
stem(f,abs(X),'.');
xlim([-4000,4000]);

%Ex3
disp('Exercicio 3');
HF = zeros(1,length(X));
HF( f > 100 & f < 400 ) = 1;
HF( f > -400 & f < -100) = 1;
figure(2);
plot(f,HF);
ylim([0 2]);
xlim([-2000 2000]);

w=X.*HF';
figure(3);
stem(f,abs(w),'.');
xlim([-1000 1000])
figure(4);
[xfiltrado, t] = reconstroi(w,f);
 plot(t,xfiltrado);
 xlabel("Tempo (seg)");
 ylabel("Sinal x(t)");
sound(xfiltrado,fa);


