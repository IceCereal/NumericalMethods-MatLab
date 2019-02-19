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
