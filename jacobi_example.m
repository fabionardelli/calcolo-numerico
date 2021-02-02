A = [4,2,1;2,4,2;1,2,4];
b = [7;8;7];
tol = 1e-5;
x = [1.1;1.1;1.1];
nitmax = 100;
[x,nit,res] = jacobi(A,b,tol,x,nitmax)