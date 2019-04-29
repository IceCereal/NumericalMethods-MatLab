X = @(x) exp(x/10)*sin(x);
x = 0:0.1:20;
y = 0:0.1:20;

for i= 1:1:200
    y(i)=X(x(i));
end
plot(x,y)
