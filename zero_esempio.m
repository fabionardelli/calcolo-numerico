f = @(x) cos(x)-x.^3;
h = 10^-6;
tol = 1e-10;
maxiter = 50;
x = .86;
format long
%{
x_mesh = linspace(0,1);
plot(x_mesh, f(x_mesh));
hold on
plot([0 1], [0 0], 'k')
%}
[sol,numiter] = zero(f,h,tol,x,maxiter)