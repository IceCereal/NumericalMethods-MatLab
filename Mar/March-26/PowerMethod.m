% Input: N x N matrix of N - Linearly Independent Eigen Vectors
% Input: Initial Vector X0 (Guess)

% Input Matrix:
A = [-15 4 3; 10 -12 6; 20 -4 2];
x0 = [1; 1; 1;];

x0 = x0 / norm(x0, inf);
x1 = A*x0;
x1 = x1 / norm(x1, inf);

RQ = (x1'*A*x1) / (x1'*x1);

iter = 0;

while norm(A*x1 - RQ*x1, inf) > 10^-6
    x0 = x1;
    x1 = A * x0;
    x1 = x1 / norm(x1, inf);
    RQ = (x1'*A*x1) / (x1'*x1);
    iter = iter + 1;
end

disp(RQ);
disp(x1);
disp(iter);
