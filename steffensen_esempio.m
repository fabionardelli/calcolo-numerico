f = @(x) sin(x)-x.^3;
x = .95;
tol = 1e-12;
nitmax = 50;
[x,nit,fx]=steffensen(f,x,tol,nitmax)
