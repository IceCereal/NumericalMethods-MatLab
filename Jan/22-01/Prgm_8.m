lol = @(x) 1.2/x*((sqrt((16*x*x)+1)+ (1/4)*(1/x)*log(sqrt((16*x*x)+1)+4*x)))^(-2/3);
for x = 0.45:0.05:0.90
    lol(x)
end
    
