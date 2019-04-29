% Gaussian Quadrature
% For n=2 points, values are -sqrt(3/5), 0, sqrt(3/5)
% A = 5/9 || B = 8/9 || C = 5/9

% INPUT: f = @(x) exp(x).*sin(x);

% X Function
f = input('Enter X Function: ');

% Start, Stop
start = input('Enter Start Value: ');
stop = input('Enter Stop Value: ')';

% Final Integral
FinVal = (5/9) * f( (((start - stop)/2) * (-sqrt(3/5))) + ((start + stop)/2) );
FinVal = FinVal + (8/9) * f( (((start - stop)/2) * (0)) + ((start + stop)/2) );
FinVal = FinVal + (5/9) * f( (((start - stop)/2) * (sqrt(3/5))) + ((start + stop)/2) );
FinVal = (stop - start)/2 * FinVal;

% Print Final Value
disp('Approx Value');
disp(FinVal);

% Print Actual Value
disp('Actual Value');
disp(integral(f, start, stop));