X = @(r,theta) r*cos(theta);
Y = @(r,theta) r*sin(theta);
R = @(x,y) sqrt((x*x)+(y+y));
r = 2;

for Theta = 0:pi/4:5*pi/4
    a=X(2,Theta);
    b=Y(2,Theta);
    R(a,b)
end
    
    
    