% for multiplicity 2 %
clear all
clc
syms x
% f is the main function %
f=input('Enter function:')
% y is the first differential of the function %
f1=inline(diff(f(x),x),'x');
f2=inline(diff(f1(x),x),'x');
% x is the initial condition %
x=input('Enter X0:');
p=input('Enter P:');
y=x;
h=-p*f(x)/f1(x);
k=-(p-1)*f1(y)/f2(y);
x(2)=x(1)+h;
y(2)=y(1)+k;
error=0.1;
i=2;
while abs(x(i))-abs(y(i))>error
    h=-f(x(i))/f1(x(i));
    k=-(p-1)*f1(y(i))/f2(y(i));
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+k;
    i=i+1;
end
if abs(x(i))-abs(y(i))<=error
    disp('FUNCTION HAS DOUBLE ROOT AT A POINT')
    x(i)
    y(i)
end

    

