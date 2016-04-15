function Y = lagY4(n)
    A = lagA(n);
    B = lagB4(n);
    Y=(A\B);
end

