% Composite Trapezoidal Rule
% Splitting the interval into many subintervals and applying
% The trapezoidal rule for each interval

% X Function
X = input('Enter X Function: ');

% Number of Intervals
n = input('Enter number of intervals: ');

% Integral LowerBound - Integral UpperBound
start = input('Enter Start Value: ');
stop = input('Enter Stop Value: ');

% Interval Size
h = stop - start;
h = h/n;

value = 0;
for i = 0:n-1
    valueCalc = X(i*h + start) + X((i+1)*h + start);
    value = value + valueCalc;
end
value = value * (h/2);

value

