f = @(x)( exp(x) - 3*x);
g = @(x)(x*x*x + 3*x - 1);
h = @(x)(x*x*x -2*sin(x));

a=3;
b=0;
x=0;
y=3;
i=0;
u=3;
[a,b] = bisection(f,a,b);
[x,y] = bisection(g,x,y);
[i,u] = bisection(h,i,u);

disp(f(a))
disp(g(x))
disp(h(i))
