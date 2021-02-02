function i = simpson(f,a,b,n)
if b <= a || n <= 0 || mod(n,2)~=0
    i = -1;
    return
end
h = (b-a)/n;
fa = f(a);
fb = f(b);
t = 0;
for i = 1:(n/2)-1
    x = a+2*i*h;
    t = t+f(x);
end
u = 0;
for i = 1:n/2
    x = a+(2*i-1)*h;
    u = u+f(x);
end
i = (h/3)*(fa+2*t+4*u+fb);
end