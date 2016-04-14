function oppgave5
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
    a=(f/(24*E*I))*(x^2)*((x^2)-(4*L*x)+(6*(L^2)));    
for k = 1:11
    n=10*(2^k);
    y=lagY(n);
    num_y(k,1) = y(n);
    error(k,1) = abs(y(n)-a);
    intervals(k,1) = n;
    exact_y(k,1) = a;

end
 T = table(intervals,num_y,exact_y,error)
end

