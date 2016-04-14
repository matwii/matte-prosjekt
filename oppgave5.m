function oppgave5
disp(['tabell for feil på x = L for hver n'])
disp(['-----------------------------------------'])
disp(['       n            ', 'tilnmærmet             ', 'feil'])
disp(['-----------------------------------------'])
for k = 1:11
    n=10*(2^k);
    A=lagA(n);
    E=1.3e10;
    d=0.03;
    I=d^3/12;
    g=-9.81;
    f=480*d*g;
    L=2;
    h=L\n;
    x=(h^4)*f/(E*I);
    x1=ones(n,1);
    b=x*x1;
    y=A\b;
    x=2;
    a=(f/(24*E*I))*(x.^2)*(x.^2-4*L*x+6*L^2);
    disp([n,  y(n), abs(y(n)-a)])
end
end

