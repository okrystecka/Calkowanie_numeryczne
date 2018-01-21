function[wynik] = metoda_parabol(k, min, max)
  %Wyznacza przyblizona wartosc calki metoda trapezow o granicach min i max oraz  skoku (wysokosci trapezu) rownym k
  format long;
  xsr = 12;
  sigma = 0.04;

  f = @(x) exp (- ((x-xsr)^2)/(2*(sigma^2)));

  %obliczanie calki K = integer(f(x))
  n = (max - min)/k; % obliczanie ilosci punktow w danym przedziale przy skoku rownym k 
  suma = 0;
  for i = 0:(n/2-1)
    %dk = min +i*k;
    a = f(min + 2*i*k);
    b = 4*f(min + (2*i+1)*k);
    c = f(min + (2*i+2)*k);
    K = a + b + c;
    suma = suma + K;
end

  
  I = k.*suma/3;
  wynik = I/(sigma*sqrt(2*pi));
  disp('I = ')
  disp(wynik);
