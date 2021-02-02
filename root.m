function [x,nit] = root(s,n,tol,nitmax)
if s <= 0 || n <= 1
    nit = -1;
    return
end
x = s;
for nit = 1:nitmax
    old_x = x;
    x = (1/n)*((n-1)*x+(s/x^(n-1)));
    fprintf('%d\t %1.15f\n',nit,x)
    if abs(x-old_x) <= tol*abs(x)
        return
    end
end
nit = -2;
end