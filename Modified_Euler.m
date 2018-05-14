clear all
clc
% user input of function dy/dx %
f=input('Enter function:')
% initial condition %
x=input('Enter X0:');
y=input('Enter Y0:');
% Interval length %
h=input('Enter h:');
% aimed point %
a=input('Enter the point:');
% here p is the notation of predicted and c is of corrected %
y1p=f(x,y);
yc(1)=y(1);
x(2)=x(1)+h;
y(2)=y(1)+h*y1p;
y1p(2)=f(x(2),y(2));
y1c=(y1p(1)+y1p(2))/2;
yc(2)=y(1)+h*y1c;
i=3;
c=((a-x(1))/h)+1;
while i<=c
    x(i)=x(i-1)+h;
    y(i)=yc(i-1);
    y1p(i)=f(x(i),y(i));
    y1c(i-1)=(y1p(i)+y1c(i-2))/2;
    yc(i)=yc(i-1)+h*y1c(i-1);
    i=i+1;
end
[x',yc']




