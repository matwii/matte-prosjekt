function Y = LagY(n)
A = lagA(n);
B = lagB(n);
Y=(A\B);
end

