function B = lagB3(n)
    E=1.3*10^10; %Youngs modulus
    L=2; %Lengde
    d = 0.03; %Diameter
    w = 0.3; %Bredde
    g=-9.81; %Gravitasjon
    D=480; %Tetthet
    h=L/n; %H�yde
    f=D*d*g*w; %Funksjon
    I=w*d^3/12;
    q=((h^4)/(E*I));
    B=ones(n,1)*f;
    for i = 1:n
       B(i,1)=B(i,1)-g*100*(sin((pi/L)*i*h));
        
        
        
    end
    
    B=q*B;
end








