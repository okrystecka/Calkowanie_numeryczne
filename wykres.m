function [ ] = wykres(min, max, option )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

X = 0.00000001:0.00000001:0.000001;
switch option
    case 0
        
        plot(X, blad_kwadratur(X, min, max, 0))
        title('Wykres b³êdu metody trapezów')
        ylabel('E(k)')
        xlabel('k')
    case 1
        
        Y = blad_kwadratur(X, min, max, 1);
        plot(X, Y)
        title('Wykres b³êdu metody parabol')
        ylabel('E(k)')
        xlabel('k')
        
end

