function lagB2
A = lagA(10);
E=1.3e10;
d=0.03;
I=d^3/12;
g=-9.81;
f=480*d*g
h=2/10;
L=2;
x=(h^4)*f/(E*I);
x1=ones(10,1);
b=x*x1;
y=A\b;
i=1;
for x=0.2:0.2:2
    a(i)=(f/(24*E*I))*(x.^2)*(x.^2-4*L*x+6*L^2);
    i=i+1;
end
disp(['-------------------------------------------'])
disp(['    x','    tilnærmet','    eksakt','     feil'])
disp(['-------------------------------------------'])
for i=1:10
    x=i*2/10;
    disp([x y(i) a(i) y(i)-a(i)])
end
semilogy(0.2:0.2:2,y)
hold on
semilogy(0.2:0.2:2,a)
xlabel('h'),ylabel('y'),grid on
title('A semilog plot for the approximate and exact solution')
end

