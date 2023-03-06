function [a_k, b_k] = Coefs_ak_bk(Ta,T0,x,k)
%UNTITLED7 Calcular os coeficientes ak e bk
%   Detailed explanation goes here
N= round(T0 /Ta);
a_k = zeros(k,1);
b_k= zeros(k,1);
f = 1/T0;
k = [0:k-1]';

for i=1:N
    a_k = a_k+ 2/N *(x(i) * cos(2*pi*k*f*i*Ta));
    b_k = b_k +2/N *(x(i) * sin(2*pi*k*f*i*Ta));
end
end