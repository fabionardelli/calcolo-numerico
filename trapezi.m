function i = trapezi(f,a,b,n)
if a >= b || n < 1
    i = -1;
    return
end
h = (b-a)/n;
t = 0;
for i = 1:n-1
    x = a+i*h;
    t = t+f(x);
end
i = (h/2)*(f(a)+2*t+f(b));
end