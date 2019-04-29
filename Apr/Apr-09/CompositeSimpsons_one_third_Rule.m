% Composite Simpson's 1/3 Rule
% Splitting the interval into many subintervals and applying
% Simpson's 1/3 rule for each interval

% Input - X:
X = [0, 1/6, 2/6, 3/6, 4/6, 5/6, 1];
% Input - Y:
Y = [1, 6/7, 3/4, 2/3, 3/5, 6/11, 1/2];

% Interval Size
h = X(2) - X(1);

% Start Computation
val = Y(1) + Y(7);
for i = 2:6
   if mod(i,2) == 1
       val = val + 2*Y(i);   
   else       
       val = val + 4*Y(i);
   end    
end
val = val * (h/3);

val