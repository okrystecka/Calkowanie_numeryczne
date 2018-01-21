function[wynik] = metoda_trapezow(k, min, max)
%Wyznacza przyblizona wartosc calki metoda trapezow o granicach min i max oraz  skoku (wysokosci trapezu) rownym k
format long;
 xsr = 12;
 sigma = 0.04;
 
 f = @(x) exp (- ((x-xsr).^2)/(2*(sigma.^2)));
 
 %obliczanie calki K = integer(f(x))
 n = (max - min)./k; % obliczanie ilosci punktow w danym przedziale przy skoku rownym k 
suma = 0;
for i = 0:(n-1)
    h = min + i*k; %h - argument, dla ktorego liczony jest aktualny trapez
    K = f(h) + f(h+k) ; 
    suma = suma + K;
end
I = (suma.*k)/2;
wynik =I/(sigma*sqrt(2*pi));
disp('I = ')
disp(wynik);
