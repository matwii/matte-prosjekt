function Y = lagY3(n)
    A = lagA(n);
    B = lagB3(n);
    Y=(A\B);
end

