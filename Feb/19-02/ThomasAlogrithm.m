%Thomas Algorithm:
%Useful for figuring out solutions of matrices that are tridiagnol

%Size of Matrix:
n = 4;

%{
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
%}

%{
%Create Values Vector
D = zeros(n,1);


for i = 1:n
    D(i) = randi(imax);
end
%Fin Create Values
%}

A = [1 4 0 0; 3 4 1 0; 0 2 3 4; 0 0 1 3;];
D = [1; 2; 4; 3;];

%Start Gaussian Elimination
multiplier = A(n, n-1) / A(n-1, n-1);

A(n, n) = A(n, n) - multiplier * A(n-1, n);
A(n, n-1) = 0;
D(n) = D(n) - multiplier * D(n-1);

for i = 2:n-1
    multiplier = A(i, i-1) / A(i-1, i-1);
    
    A(i, i-1) = 0;
    A(i, i) = A(i, i) - (multiplier * A(i-1, i));
    A(i, i+1) = A(i, i+1) - (multiplier * A(i-1, i+1));
      
    D(i) = D(i) - multiplier * D(i-1);
end
%Fin Gaussian Elimination

%Back Substitution
X = zeros(n,1);

X(n) = D(n) / A(n,n);

for i = n-1:-1:1
   X(i) =  D(i) - A(i, i+1) * X(i + 1);
   X(i) = X(i) / A(i, i);    
end
%Fin Back Substitution





