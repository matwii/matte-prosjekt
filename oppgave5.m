function oppgave5
disp(['tabell for feil p� x = L for hver n'])
disp(['-----------------------------------------'])
disp(['       n            ', 'tilnm�rmet             ', 'feil'])
disp(['-----------------------------------------'])

format long;

for k = 1:11
    n=10*(2^k);
<<<<<<< HEAD
    A=lagA(n);
    E=1.3e10;
    d=0.03;
    I=d^3/12;
    g=-9.81;
    f=480*d*g*0.3;
    L=2;
    h=L\n;
    x=(h^4)*f/(E*I);
    x1=ones(n,1);
    b=x*x1;
    y=A\b;
    x=2;
    a=(f/(24*E*I))*(x^2)*((x^2)-(4*L*x)+(6*(L^2)));
    disp([n,  y(n), abs(y(n)-a)])
=======
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
>>>>>>> origin/master
end
end

