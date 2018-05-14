clear all
clc
% user input of function %
f=input('Enter function:');
X(1)=input('Enter X0:');
n=input('Enter no. of Division:');
X(n+1)=input('Enter Xn:');
% h is the interval length %
h=(X(n+1)-X(1))/n;
i=2;
A1=0;
while i<=n
    X(i)=X(i-1)+h;
    A1=A1+2*f(X(i));
    i=i+1;
end
A3=f(X(1))+f(X(n+1));
A2=A1+A3;
% Area under the curve %
f
Area_under_the_curve=A2*h/2
    
