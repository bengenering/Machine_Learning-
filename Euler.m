clear all
clc
% Input fuction %
f=input('Enter function:');
% initial conditions %
x=input('Enter X0:');
y=input('Enter Y0:');
% h is the interval length %
h=input('Enter h:');
% a is the aimed point %
a=input('Enter the point:');
f
b=f(x,y);
i=2;
c=((a-x(1))/h)+1;
while i<=c
    x(i)=x(i-1)+h;
    y(i)=y(i-1)+h*f(x(i-1),y(i-1));
    b(i)=f(x(i),y(i));
    i=i+1;
end
[x',y',b']





