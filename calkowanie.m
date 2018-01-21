%Oblicza calke funkcji o zadanym skoku calkowania, wybrana metoda i
%granicami calkowania
format long
xsr = 12;
sigma = 0.04;

%     d = dialog('Position',[300 300 250 150],'Name','My Dialog');
% 
%     txt = uicontrol('Parent',d,...
%                'Style','text',...
%                'Position',[20 80 210 40],...
%                'String','Witamy w programie ca³kuj¹cym! Wybierz metodê ca³kowania');
% 
%     btn1 = uicontrol('Parent',d,...
%                'Position',[45 20 70 25],...
%                'String','Metoda trapezów (na razie zamyka)',...
%                'Callback',{@pushbutton_callback,1});
%            
%     btn2 = uicontrol('Parent',d,...
%                'Position',[125 20 70 25],...
%                'String','Metoda prostok¹tów (na razie zamyka)',...
%                'Callback',{@pushbutton_callback,2});
           
                     

p=menu('Wybor metody calkowania', 'Metoda trapezow', 'Metoda parabol'); 
if (p==1) 
   disp('Metoda trapezow') 
elseif (p==2) 
   disp('Metoda parabol') 
end  



o=menu('Wybor granic calkowania', 'a = xsr - sigma, b = xsr + sigma' , 'a = xsr - 2*sigma, b = xsr + 2*sigma', 'a = xsr - 3*sigma, b = xsr + 3*sigma'); 

if (o==1) 
   disp('a = xsr - sigma, b = xsr + sigma') 
   a = xsr - sigma;
   b = xsr + sigma;
   if (p==1) 
       
       wykres(a, b, 0);
       metoda_trapezow(0.0000001, a, b);
       blad_kwadratur(0.0000001, a, b, 0);

   elseif (p==2)
       
       wykres(a, b, 1);
       display(metoda_parabol(0.00000001, a, b));
       blad_kwadratur(0.00000001, a, b, 1);
       
   end 
   
elseif (o==2) 
   disp('a = xsr - 2*sigma, b = xsr + 2*sigma') 
   a = xsr - 2*sigma;
   b = xsr + 2*sigma;
   if (p==1) 
       
       wykres(a, b, 0);
       metoda_trapezow(0.0000001, a, b)
       blad_kwadratur(0.0000001, a, b, 0);
       
   elseif (p==2)
       
       wykres(a, b, 1);
       metoda_parabol(0.0000001, a, b);
       blad_kwadratur(0.00000001, a, b, 1);
       
   end 
   
elseif (o==3)   
   disp('a = xsr - 3*sigma, b = xsr + 3*sigma') 
   a = xsr - 3*sigma;
   b = xsr + 3*sigma;
   if (p==1) 
       
       wykres(a, b, 0);
       metoda_trapezow(0.0000001, a, b);
       blad_kwadratur(0.0000001, a, b, 0);
       
   elseif (p==2)
       
       wykres(a, b, 1);
       metoda_parabol(0.0000001, a, b);
       blad_kwadratur(0.00000001, a, b, 1);
       
   end 
end
    
    
