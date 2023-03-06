x = linspace(0,2*pi);
y = sin(x);
sen_serie2 = f1(x,2);
sen_serie10 = f1(x,10);
plot(x,y,'r',x,sen_serie2,'k',x,sen_serie10,'b');
legend ('sin','n=2','n=10');