function sen_serie = f1(x,N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
soma=0;
for n=1:N
    soma = soma+ x.^n/factorial(n)*sin(n*pi/2);
end
sen_serie  = soma;
end