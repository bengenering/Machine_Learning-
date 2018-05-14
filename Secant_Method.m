clear all
clc
syms x i
% f is the main function %
f=input('Enter function:')
% x is the initial condition %
x(1)=input('Enter X0:');
x(2)=input('Enter X1:');
error=0.0001;
i=2;
while abs(f(x(i)))>error
    % SLOPE %
    y=(f(x(i))-f(x(i-1)))/(x(i)-x(i-1));
    h=-f(x(i))/y;
    x(i+1)=x(i)+h;
    i=i+1;
end
disp('SOLUTION TO THE EQUATION:')
SOLUTION=double(x(i-1));
SOLUTION
    

