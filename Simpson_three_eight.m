clear all
clc
% user input of function %
f=input('Enter function:');
n=input('Enter no. of Division in Multiple of 3:');
x(1)=input('Enter X0:');
x(n+1)=input('Enter Xn:');
% h is the length of intervals %
h=(x(n+1)-x(1))/n;
i=2;
j=1;
k=3;
A1=0;
f
while i<=n+1
    x(i)=x(i-1)+h;
    i=i+1;
end
while j<n
    A1=A1+f(x(j+1));
    j=j+1;
end
A2=A1;
while k<n
    A2=A2-f(x(k+1));
    k=k+3;
end
% Area under the curve %
Area=(2*A1+A2+f(x(1))+f(x(n+1)))*3*h/8