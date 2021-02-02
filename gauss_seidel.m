function [x,nit,res] = gauss_seidel(A,b,tol,x,nitmax)
if size(A, 1) ~= size(A,2) || size(A,1) ~= size(b,1) || ...
        size(A,1) ~= size(x,1)
    nit = -1;
    return
end
L = tril(A);
U = triu(A,1);

for nit = 1:nitmax
    old_x = x;
    x = L\(b-U*x);
    res = norm(A*x-b,inf);
    if norm(x-old_x,inf) <= tol*norm(x,inf)
        return
    end
end
nit = -2;
end