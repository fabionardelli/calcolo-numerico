A = [3,2,1;2,2,1;1,1,1];
x = [1;1;1];
tol = 1e-6;
nitmax = 50;
[v,nit] = potenze(A,x,tol,nitmax)