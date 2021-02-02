f = @(x) sin(pi*x);
a = 0;
b = 1;
tol = 1e-3;
n = 4;
nitmax = 50;
format long
s = trapezi(f,a,b,n);
for i = 1:nitmax
    n = 2*n;
    old_s = s;
    s = trapezi(f,a,b,n)
    if abs(s-old_s) <= tol
        break
    end
end