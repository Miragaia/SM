clear all
load('Guitar02.mat');
fa=1/Ta;
[X,f]= Espetro(x,Ta);

HF = zeros(1,length(X));
HF( f > 867 & f < 869 ) = 1;  
HF( f > -869 & f < -867) = 1;

Hf = zeros(1,length(X));
Hf( f > 1299 & f < 1301 ) = 1; 
Hf( f > -1301 & f < -1299) = 1;


w=X.*HF'+X.*Hf';
figure(4);
[xfiltrado, t] = Reconstroi(w,f);
xlabel("Tempo (seg)");
ylabel("Sinal x(t)");

plot(real(t(1:500)), xfiltrado(1:500));xlabel("Tempo (s)"); ylabel("Sinal");legend("Sinal Sinusoide de Freq 868H e 1300Hz")