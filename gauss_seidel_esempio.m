A = [2.4,-.8,-.7;.5,1.5,.7;-.1,.8,2.1];
b = [.9;2.7;2.8];
x = [.9;.9;.9];
tol = 1e-5;
nitmax = 50;
[x,nit,res] = gauss_seidel(A,b,tol,x,nitmax)