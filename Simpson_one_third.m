clear all
clc
disp('number of intevals must be even')
% user input of function %
f=input('Enter function:');
n=input('Enter even no. of Divisions:');
X(1)=input('Enter X0:');
X(n+1)=input('Enter Xn:');
f
% h is the interval length %
h=(X(n+1)-X(1))/n;
i=1;
k=2;
j=2;
A1=0;
A2=0;
while j<=n+1
    X(j)=X(j-1)+h;
    j=j+1;
end
while i<n
    A1=A1+f(X(i+1));
    i=i+2;
end
while k<n
    A2=A2+f(X(k+1));
    k=k+2;
end
% Area under the curve %
Area=(f(X(1))+f(X(n+1))+2*A2+4*A1)*h/3

    

