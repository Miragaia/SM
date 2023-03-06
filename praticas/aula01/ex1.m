x = [1:2:10]
y = [-5:5]
z = linspace(-5,5,11)

a=[1 5 1-j; 4 j -1]
a(:,4)=[1,2]
a(3,:)=[2,3,5,7]

X= linspace(-2*pi,0,100)
f =sin(X).*exp(X)
plot(X,f, ".-R")
xlabel("X")

ylabel("Y")
title("Grafico")
grid on