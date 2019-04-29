% Lagrange Interpolation:
% Find a polynomial P(x) of degree atmost n such that
% P(xi) = y(i), i = 0,1,2,...n
% P(x) = sigma(i = 0, n) [ yi*li(x) ]
% li(x) = pi(j = 0, n, j ~= i) [ (x-xj) / (xi-xj) ], i = 0,1,2,...n

% Inputs:
x = [0 1 2 4 5 6];
y = [1 14 15 5 6 19];

val1 = 6.5;
val2 = 6.5;

l = [1 1 1 1 1 1];

for i = 1:6
    for j = 1:6
        if i == j
            continue
        end
        l(i) = l(i) * ( (val1 - x(j)) / (x(i) - x(j)) );
    end    
end

pVal = 0;

for i = 1:6
    pVal = pVal + y(i) * l(i);
end
disp (pVal)
