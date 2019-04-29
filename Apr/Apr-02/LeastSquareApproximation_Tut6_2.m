% Tutorial 6 - Problem 1

% Least Square Approximation:
% Figure out the values a, b such that:
% The function: y = a*exp(b*x)
% Is minimum for the given data

% Input X:
x = [1, 2, 3, 4];
% Input Y:
y = [1.65, 2.70, 4.50, 7.35];
% Log because the question asked us to
for i = 1:4
    y(i) = log(y(i));
end

% Input Function Params:
phi_1 = @(x) 1;
phi_2 = @(x) x;

% We use matrices to calculate the values of c1, c2
% A -> 2x2 matrix: Sigma's
% B -> 2x1 matrix: c1, c2's
% C -> 2x1 matrix: Sigma(yi * phi_1(xi))'s

A = [0 0; 0 0];
B = [0; 0];
C = [0; 0];

% Calculate A & C
for i = 1:4
    A(1, 1) = A(1, 1) + phi_1(x(i))^2;
    A(1, 2) = A(1, 2) + phi_1(x(i))*phi_2(x(i));
    A(2, 1) = A(2, 1) + phi_2(x(i))*phi_1(x(i));
    A(2, 2) = A(2, 2) + phi_2(x(i))^2;
    
    C(1) = C(1) + y(i)*phi_1(x(i));
    C(2) = C(2) + y(i)*phi_2(x(i));
end

% Calculate B
B = A\C;

% Because the question asked us to
B(1) = exp(B(1));

% Display B
disp (B);
