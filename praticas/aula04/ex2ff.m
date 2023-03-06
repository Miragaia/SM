function [x,t] = ex2ff (Ta,f,Np,a,b)
  Ttotal = Np*(1/f); %Numero de periodos * periodo
  t = (0:Ta:Ttotal)';

   sumA=0;
   sumB=0;
  for k = 1 : length(a)
    sumA=sumA + a(k)*cos(2.*pi.*k.*f.*t);
    sumB=sumB + b(k)*sin(2.*pi.*k.*f.*t) ;
  end
  
  x = sumA + sumB;
end