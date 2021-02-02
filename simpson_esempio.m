f = @(x) tan(x);
a = 0;
b = pi/4;
tol = 1e-4;
n = 4;
nitmax = 50;
format long

s = simpson(f,a,b,n)
for i = 1:nitmax
    old_s = s;
    n = 2*n;
    s = simpson(f,a,b,n)
    if abs(s-old_s) <= tol
        break
    end
end