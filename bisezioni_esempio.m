f = @(x) sin(x)/x-x;
a = .2;
b = 1;
tol = 1e-10;
nitmax = 50;
[x,nit,fx] = bisezioni(f,a,b,tol,nitmax);
fprintf("appr. zero: %1.15f\n" + ...
        "n. iterazioni: %d\n" + ...
        "res. %1.1e",x,nit,fx);