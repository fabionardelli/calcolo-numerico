function [x,nit,res] = jacobi(A,b,tol,x,nitmax)
if ~ismatrix(A) || size(A,1) ~= size(A,2) ...
        || size(A,1) ~= size(b,1) || size(A,1) ~= size(x,1)
    nit = -1;
    return
end
D = diag(diag(A));
R = A-D;
for nit=1:nitmax
    old_x = x;
    x = D\(b-R*x);
    res = norm(A*x-b,inf);
    if norm(x-old_x,inf) <= tol*norm(x,inf)
        return
    end
end
nit =-2;
end