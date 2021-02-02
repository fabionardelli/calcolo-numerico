function [sol,numiter] = zero(f,h,tol,x,maxiter)
for numiter = 1:maxiter
    d = f(x+h)-f(x-h);
    if d == 0
        numiter = -1;
        return
    end
    dx = - 2*h*(f(x)/d);
    x = x+dx;
    if abs(dx) <= tol*abs(x)
        sol = x;
        return
    end
end
numiter = -2;
end