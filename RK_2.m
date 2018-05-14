clear all
clc
% input of function dy/dx %
f=input('Enter function:')
% initial conditions %
x=input('Enter X0:');
y=input('Enter Y0:');
% Interval length %
h=input('Enter h:');
% aimed point %
a=input('Enter the point:');
c=((a-x(1))/h)+1;
i=2;
while i<=c
    k1(i-1)=f(x(i-1),y(i-1));
    k2(i-1)=f((x(i-1)+h),(k1(i-1)*h+y(i-1)));
    y(i)=y(i-1)+h/2*(k1(i-1)+k2(i-1));
    x(i)=x(i-1)+h;
    i=i+1;
end
[x',y']





