  %%a
figure(1);
Ta= 0.01;
T=1;
N= (T/Ta)*4;
t = [0:Ta:(10*T-Ta)]';

x = sin(2*pi*t);
[X,fx] = Espetro(x,Ta);
axis([-50,50,0,0.6]);

%%b
figure(2);
T= 50;
y= sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t - pi/4);
[X,fx] = Espetro(y,Ta);

%%c
figure(3);
Ta= 0.01;
T=0.1;
N= (T/Ta)*4;
t = [0:Ta:(10*T-Ta)]';
z= 10+ 14*cos(20*pi*t- pi/3)+ 8*cos(40*pi*t+pi/2);
[X,fx] = Espetro(z,Ta);

%%d
figure(4);
Ta=0.01;
T=1;
