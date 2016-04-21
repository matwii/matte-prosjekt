function Oppgave7
%OPPGAVE6F Summary of this function goes here
%   Detailed explanation goes here
     
    n = 200;

    Y = lagY4(n);
    
    h = 2/n;
    
    x=h:h:2;
    plot(x,Y);
    Y(n)
end

