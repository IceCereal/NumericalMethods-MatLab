% Gaussian Quadrature
% For n=2 points, values are +- 1/sqrt(3)
% A = B = 1

% INPUT: f = @(x) exp(x).*sin(x);

% X Function
f = input('Enter X Function: ');

% Start, Stop
start = input('Enter Start Value: ');
stop = input('Enter Stop Value: ')';

% Final Integral
FinVal = f( (((start - stop)/2) * (1/sqrt(3))) + ((start + stop)/2) );
FinVal = FinVal + f( (((start - stop)/2) * (-1/sqrt(3))) + ((start + stop)/2) );
FinVal = (stop - start)/2 * FinVal;

% Print Final Value
disp('Approx Value');
disp(FinVal);

% Print Actual Value
disp('Actual Value');
disp(integral(f, start, stop));