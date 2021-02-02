function [x, nit]=traub(f, df, x, tol, nitmax)
for nit = 1:nitmax
    dfx = df(x);
    if dfx == 0
        nit = -1;
        return
    end
    y = x - (f(x)/dfx);
    old_x = x;
    x = y - (f(y)/dfx);
    if abs(x - old_x) <= tol*abs(x)
        return
    end
end
nit = -2;
end