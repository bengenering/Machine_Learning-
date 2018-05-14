tic
clc
clear all
disp('Enter all the values in the form of Column matrix');
% Data entry from user %
x(:,1)=input('Enter first column of Details:');
x(:,2)=input('Enter second column of Details:');
[x(:,1),x(:,2)]
% Aimed Point %
t=input('Enter point where you want to find the value:');
k=input('Enter the ORDER:');
n=size(x); n=n(1);
p=(t-x(1,1))/(x(2,1)-x(1,1));
b(:,1)=x(:,2);
for j=2:1:k+1
    for i=1:1:(n-j+1)
        b(i,j)=(b(i+1,j-1)-b(i,j-1));
    end
end
c=b(1,:);
f(1)=c(1,1);
for i=2:1:k+1
    f(i)=c(i)/factorial(i-1);
    for j=0:1:i-2
        f(i)=f(i)*(p-j);
    end
end
disp('THE CO_EFFICIENTS')
% coefficients %
b(1,:)'
K=sum(f);
disp('FINAL ANSWER:')
K
    
