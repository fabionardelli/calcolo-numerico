f=@(x) sin(x)-x.^3;
df=@(x) cos(x)-3*x.^2;
ddf=@(x) -sin(x)-6*x;
x=0.99;
tol=1e-12;
nitmax=50;
[x,nit,fx]=halley(f,df,ddf,x,tol,nitmax)