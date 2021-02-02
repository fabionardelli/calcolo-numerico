function [x,numiter] = cubic_root(s,tol,maxiter)
if s <= 0
    numiter=-1;
    return
end
x = s;
for numiter = 1:maxiter
    old_x = x;
    x = (1/3)*(2*x+s/x^2);
    if abs(x-old_x) <= tol*abs(x)
        return
    end
end
numiter = -2;
end