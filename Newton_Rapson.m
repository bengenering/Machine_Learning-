clear all
clc
syms x
% f is the main function %
f=input('Enter function:')
% y is the first differential of the function %
y=inline(diff(f(x),x),'x');
% x is the initial condition %
x=input('Enter X0:');
h=-f(x)/y(x);
x(2)=x(1)+h;
error=0.0001;
i=2;
while abs(f(x(i)))>error
    h=-f(x(i))/y(x(i));
    x(i+1)=x(i)+h;
    i=i+1;
end
% x(i) is the nearest root to the x(1) %
x(i)

    

