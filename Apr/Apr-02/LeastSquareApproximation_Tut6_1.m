% Tutorial 6 - Problem 1

% Least Square Approximation:
% Figure out the values c1, c2 such that:
% The function: y = c1*phi_1(x) + c2*phi_2(x)
% Is minimum for the given data

% Input X:
x = [0, 50, 100, 150, 200, 250, 300, 350];
% Convert Degree to Radian
for i = 1:8
    x(i) = x(i) * pi/180;
end
% Input y:
y = [0.754, 1.762, 2.041, 1.412, 0.303, -0.484, -0.380, 0.520];

% Input Function Params:
phi_1 = @(x) 1;
phi_2 = @(x) sin(x);

% We use matrices to calculate the values of c1, c2
% A -> 2x2 matrix: Sigma's
% B -> 2x1 matrix: c1, c2's
% C -> 2x1 matrix: Sigma(yi * phi_1(xi))'s

A = [0 0; 0 0];
B = [0; 0];
C = [0; 0];

% Calculate A & C
for i = 1:8
    A(1, 1) = A(1, 1) + phi_1(x(i))^2;
    A(1, 2) = A(1, 2) + phi_1(x(i))*phi_2(x(i));
    A(2, 1) = A(2, 1) + phi_2(x(i))*phi_1(x(i));
    A(2, 2) = A(2, 2) + phi_2(x(i))^2;
    
    C(1) = C(1) + y(i)*phi_1(x(i));
    C(2) = C(2) + y(i)*phi_2(x(i));
end

% Calculate B
B = A\C;

% Display B
disp (B);