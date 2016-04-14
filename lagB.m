function B = lagB(n)
E=1.3*10^10; %Youngs modulus
L=2; %Lengde
d = 0.03; %Diameter
w = 0.3; %Bredde
g=-9.81; %Gravitasjon
D=480; %Tetthet
h=L/n; %Høyde
f=D*d*g*w; %Funksjon
I=w*d^3/12;
q=((h^4)/(E*I));
B=ones(n,1)*f;
B=q*B;
end








