function y = NewtonRhapson(f, fder, x)
c = x;
for i = 1:1000
    if f(c) < 10^-6
        break
    end
    c = c - f(c)/fder(c);
end
y = c;
end