clear all
clc
% input function dy/dx %
f=input('Enter function:')
% initial condition %
x=input('Enter X0:');
y=input('Enter Y0:');
% interval length %
h=input('Enter h:');
% aimed point %
a=input('Enter the point:');
c=((a-x(1))/h)+1;
i=2;
while i<=c
    k1(i-1)=f(x(i-1),y(i-1));
    k2(i-1)=f((x(i-1)+h/2),(k1(i-1)*h/2+y(i-1)));
    k3(i-1)=f((x(i-1)+h/2),(k2(i-1)*h/2+y(i-1)));
    k4(i-1)=f((x(i-1)+h),(y(i-1)+k3(i-1)*h));
    y(i)=y(i-1)+h/6*(k1(i-1)+k4(i-1)+2*(k2(i-1)+k3(i-1)));
    x(i)=x(i-1)+h;
    i=i+1;
end

[x',y']


