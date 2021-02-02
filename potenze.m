function [v, nit] = potenze(A, x0, tol, nitmax)
if ~ismatrix(A) || size(A, 1) ~= size(A, 2) || ...
        size(A, 1) ~= size(x0, 1)
    nit = -1;
    return
end
x = x0;
v = 0;
for nit = 1:nitmax
    d = norm(x);
    if d == 0
        v = -1;
        return
    end
    y = x / d;
    x = A * y;
    old_v = v;
    v = y' * x;
    if nit > 1 && abs(v - old_v) < tol * abs(v)
        return
    end
end
nit = -2;
end