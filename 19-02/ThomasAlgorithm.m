%Thomas Algorithm:
%Useful for figuring out solutions of matrices that are tridiagnol

%Size of Matrix:
n = 5;

%Create matrix:
A = zeros(n,n);

%Init Vals:
imax = 10;

%Create Matrix:
A(1, 1) = randi(imax);
A(1, 2) = randi(imax);
A(n, n) = randi(imax);
A(n, n-1) = randi(imax);

for i = 2:n-1
    A(i, i-1) = randi(imax);
    A(i, i) = randi(imax);
    A(i, i+1) = randi(imax);
end
%Fin Creating Matrix

%Create Values Vector
D = zeros(n,1);

for i = 1:n
    D(i) = randi(imax);
end
%Fin Create Values

%Create Placeholder Matrix for Gaussian Elimination
Placeholder = zeros(n, n);
Placeholder_D(1) = D(1);

Placeholder(1, 1) = A(1, 1);
Placeholder(1, 2) = A(1, 2);

multiplier = A(n, n-1) / A(n-1, n-1);

Placeholder(n, n) = A(n, n) - multiplier * A(n, n);
Placeholder_D(n) = D(n) - multiplier * D(n);

for i = 2:n-1
    multiplier = A(i, i-1) / A(i-1, i-1);
    
    Placeholder(i, i) = A(i, i) - multiplier * A(i, i);
    Placeholder(i, i+1) = A(i, i+1) - multiplier * A(i, i+1);
    
    Placeholder_D(i) = D(i) - multiplier * D(i);
end
%Fin Create Placeholder
