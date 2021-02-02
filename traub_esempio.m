f = @(x) 1 - x.^2/2 - x.^3;
df = @(x) -x - 3*x.^2;
x = 1;
tol = 1e-10;
nitmax = 50;
[x, nit]=traub(f, df, x, tol, nitmax)