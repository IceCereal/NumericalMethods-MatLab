%Create LU Decompostion using Dolittle's Algorithm

%Size of matrix:
n = 5;

%A Matrix
A = randi(10, n, n);

%Det(A) != 0 check
if det(A) == 0
    exit
end

%Create LU
L = zeros(n, n);
U = zeros(n, n);

%Init L Diagnol to be 1
for i = 1:n
    U(i, i) = 1;
end

%Method of figuring out L(val, 1)
L(:, 1) = A(:, 1);

%Method of figuring out L(1, val)
U(1, 2:n) = A(1, 2:n) / L(1, 1);

for i = 1:n
    for j = i+1:n
        L(i, j) = A(i, j) - L(i, 1)*U(1, j);
    end
end

