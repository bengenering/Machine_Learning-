tic
clc
clear all
disp('Enter all the values in the form of Column matrix');
% Data input from the user %
x(:,1)=input('Enter first column of Details:');
x(:,2)=input('Enter second column of Details:');
[x(:,1),x(:,2)]
% Aimed Point %
t=input('Enter point where you want to find the value:');
k=input('Enter the Order:');
n=size(x); n=n(1);
b(:,1)=x(:,2);
for j=2:1:k+1
    for i=1:1:(n-j+1)
        b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1,1)-x(i,1));
    end
end
c=b(1,:);
for i=1:1:k+1
    f(i)=c(i);
    for j=1:1:i-1
        f(i)=f(i)*(t-x(j,1));
    end
end
% coefficients b(i)%
disp('THE CO-EFFICIENTS:')
b(1,:)'
F=sum(f);
disp('FINAL ANSWER:')
F
        
