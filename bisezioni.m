function [x,nit,fx] = bisezioni(f,a,b,tol,nitmax)
x = .5*(a+b);
fa = f(a);
fx = f(x);
nit = 0;
while .5*(b-a) > tol && nit < nitmax
    if fa*fx < 0
        b = x;
    else
        a = x;
        fa = fx;
    end
    x = .5*(a+b);
    fx = f(x);
    nit = nit+1;
end
if .5*(b-a) > tol
    nit = -1;
end