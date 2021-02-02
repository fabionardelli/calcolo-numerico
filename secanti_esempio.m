f = @(x) sin(x)/x - x;
x0 = 1;
x1 = .9;
tol = 1e-10;
nitmax = 50;
[x,nit] = secanti(f,x0,x1,tol,nitmax)