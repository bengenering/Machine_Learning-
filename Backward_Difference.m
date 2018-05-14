clc
clear all
disp('Enter all the values in the form of Column matrix');
% Data Entry from user %
x(:,1)=input('Enter first column of Details:');
x(:,2)=input('Enter second column of Details:');
[x(:,1),x(:,2)]
% Aimed point %
t=input('Enter point where you want to find the value:');
n=size(x); n=n(1);
k=input('Enter the ORDER:');
p=(t-x(n,1))/(x(2,1)-x(1,1));
b(:,1)=x(:,2);
for j=2:1:k+1
    for i=n:-1:(j)
        b(i,j)=b(i,j-1)-b(i-1,j-1);
    end
end
c(1,:)=b(n,:);
f(1)=c(1,1);
for i=2:1:k+1
    f(i)=c(i)/factorial(i-1);
    for j=0:1:i-2
        f(i)=f(i)*(p+j);
    end
end
disp('THE COEFFICIENTS ')
b(n ,:)'
disp('FINAL ANSWER:')
K=sum(f);
K
    
