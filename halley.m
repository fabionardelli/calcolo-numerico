function [x,nit,fx]=halley(f,df,ddf,x,tol,nitmax)
for nit=1:nitmax
    fx=f(x);
    dfx=df(x);
    ddfx=ddf(x);
    den=2*(dfx^2)-fx*ddfx;
    if den == 0
        nit=-1;
        return
    end
    dx=-(2*fx*dfx)/den;
    x=x+dx;
    if abs(dx)<=tol*abs(x)
        return
    end
end
nit=-2;