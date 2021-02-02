function [x,nit,fx]=steffensen(f,x,tol,nitmax)
for nit = 1:nitmax
    fx = f(x);
    den = f(x+fx)-fx;
    if den == 0
        nit = -1;
        return
    end
    dx = -fx^2/den;
    x = x+dx;
    if abs(dx) <= tol*abs(x)
        return
    end
end
nit = -2;
end