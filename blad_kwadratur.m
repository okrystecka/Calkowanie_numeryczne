function [ wynik ] = blad_kwadratur( k, min, max, option )
%Liczy b³¹d kwadratur Newtona-Cotesa okreœlonej funkcji przy granicach
%ca³kowania min i max i skoku k, metoda okreslona przez parametr option
%   Detailed explanation goes here

format long;
xsr = 12;
sigma = 0.04;
ksi = 12.12;
n = (max - min)./k;

syms x

f(x) = exp (- ((x-xsr).^2)/(2*(sigma.^2)));
df(x) = diff(f(x));
df2(x) = diff(df);
df3(x) = diff(df2);
df4(x) = diff(df3);

z = double(df2(ksi));

switch option
    
    case 0
        Etrap = (((max-min).^3)*z)./(12*n.^2);
        display(Etrap);
        wynik = Etrap;

    case 1
        Epar = -(double(df4(ksi))*(max - min).^5)./(180*n.^4);
        display(Epar);
        wynik = Epar;

    otherwise
        disp('Option error');
end

end

