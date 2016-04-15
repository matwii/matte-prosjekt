function oppgave6b
disp(['tabell for feil p� x = L for hver n'])
disp(['-----------------------------------------'])
disp(['       n            ', 'tilnm�rmet             ', 'feil'])
disp(['-----------------------------------------'])

format long;
num_y = ones(11,1);
error = ones(11,1);
intervals = ones(11,1);
exact_y = ones(11,1);


    E=1.3*10^10; %Youngs modulus
    L=2; %Lengde
    d = 0.03; %Diameter
    w = 0.3; %Bredde
    g=-9.81; %Gravitasjon
    D=480; %Tetthet
%     h=L/n; %H�yde
    f=D*d*g*w; %Funksjon
    I=w*d^3/12;
    x = 2;
    p = 100;
    a=(f/(24*E*I))*(x^2)*((x^2)-(4*L*x)+(6*(L^2)))-((g*p*L)/(E*I*pi))*( ((L^3)/(pi^3))*sin((pi/L)*x)-(x^3)/6+(L*x^2)/2-(L^2)*x/pi^2 );    
    
    for k = 1:11
        n=10*(2^k);
        y=lagY3(n);
        num_y(k,1) = y(n);
        error(k,1) = abs(y(n)-a);
        intervals(k,1) = n;
        exact_y(k,1) = a;

    end
    T = table(intervals,num_y,exact_y,error)
    s = transpose( 1:11);

    plot(log(intervals),log(error))
%  axis([0 11 0.12 0.2])
end

