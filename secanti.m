function [x1,nit] = secanti(f,x0,x1,tol,nitmax)
fx0 = f(x0);
for nit=1:nitmax
    fx1 = f(x1);
    den = fx1-fx0;
    if den == 0
        nit = -1;
        return
    end
    dx = -(fx1*(x1-x0))/den;
    x0 = x1;
    x1 = x1+dx;
    fx0 = fx1;
    if abs(dx) <= tol*abs(x1)
        return
    end
end    