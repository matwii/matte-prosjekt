function oppgave5
disp(['tabell for feil p� x = L for hver n'])
disp(['-----------------------------------------'])
disp(['       n            ', 'tilnm�rmet             ', 'feil'])
disp(['-----------------------------------------'])

format long;

for k = 1:11
    n=10*(2^k);
    y=lagY(n);
    
    
E=1.3*10^10; %Youngs modulus
L=2; %Lengde
d = 0.03; %Diameter
w = 0.3; %Bredde
g=-9.81; %Gravitasjon
D=480; %Tetthet
h=L/n; %H�yde
f=D*d*g*w; %Funksjon
I=w*d^3/12;
x = 2;    
    
    
    
    a=(f/(24*E*I))*(x^2)*((x^2)-(4*L*x)+(6*(L^2)));
    disp([n  y(n) abs(y(n)-a)]);
end
end

