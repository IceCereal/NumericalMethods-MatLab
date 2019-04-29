% Composite Simpson's 3/8 Rule
% Splitting the interval into many subintervals and applying
% Simpson's 3/8 rule for each interval

% X Function
f = input('Enter X Function: ');

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
   valueCalc = f(i*h + start) + 3*f( (2*(i*h + start) + ((i+1)*h + start) )/3 );
   valueCalc = valueCalc + 3*f( ((i*h + start) + 2*((i+1)*h + start))/3 ) + f((i+1)*h + start);
   value = value + valueCalc;
end

value = value * (3*h/8);
value