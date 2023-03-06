load("Guitar02.mat");
fa = 1/Ta
sound(x, fa);
Espetro(x,Ta);
title("Espetro das notas musicais")
xlim([-5e3 5e3])
%legendas dos eixos presentes na func Espetro