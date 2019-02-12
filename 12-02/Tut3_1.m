%Evaluate sqrt(5) of the eqn x^2 - 5 by fixed point
format long

%Function 1
F = @(x) (sqrt(5) - ( x * (x-sqrt(5)) ) / sqrt(5) );

%Fixed Point ~= 2.21
c = 2.21;

%Previous Iterator
prev_c = 0;

%Stopping Critera Value
stopCriteria = 10^(-3)

%Fixed Point Iteration
while abs(prev_c - c) > stopCriteria
    prev_c = c;
    c = F(prev_c);
end

%Display C
c

%Function 2
F_2 = @(x) (-sqrt(5) - ( x * (x+sqrt(5)) ) / sqrt(5) );

%Fixed Point ~= 2.21
c = 2.21;

%Previous Iterator
prev_c = 0;

%Fixed Point Iteration
while abs(prev_c - c) > stopCriteria
    prev_c = c;
    c = F_2(prev_c);
end

%Display C
c
