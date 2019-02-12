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
