function[wynik] = metoda_parabol(k, min, max)
  %Wyznacza przyblizona wartosc calki metoda trapezow o granicach min i max oraz  skoku (wysokosci trapezu) rownym k
  format long;
  xsr = 12;
  sigma = 0.04;

  f = @(x) exp (- ((x-xsr)^2)/(2*(sigma^2)));

  %obliczanie calki K = integer(f(x))
  n = (max - min)/k; % obliczanie ilosci punktow w danym przedziale przy skoku rownym k 
  suma = f(min);
  for i = 1:(n/2)
      suma = suma + 4*f(min + (2*i-1)*k);
  end
  for i = 1:(n/2 - 1)
      suma = suma + 2*f(min+2*i*k);
  end
  suma = suma + f(max);

  
  I = k*suma/3;
  wynik = I/(sigma*sqrt(2*pi));
  disp('I = ')
  disp(wynik);
