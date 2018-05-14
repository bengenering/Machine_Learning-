tic
clc
clear all
disp('Enter all the values in the form of Column matrix');
% taking user's data input %
x(:,2)=input('Enter first column of Details:');
x(:,3)=input('Enter second column of Details:');
[x(:,2),x(:,2)]
% the detination point %
t=input('Enter point where you want to find the value:');
% difference and sort rows %
n=input('Enter the Order:');
x(:,1)=abs(t-x(:,2));
x=sortrows(x);
for i=1:1:n+1
    L(i)=1;
    for j=1:1:n+1
        if i~=j
            L(i)=L(i)*((t-x(j,2))/(x(i,2)-x(j,2)));
        end
    end
end
f=0;
for i=1:1:n+1
    f=f+L(i)*x(i,3);
end
disp('LAGRANGIAN CO-EFFICIENTS:')
L'
disp('FINAl ANSWER:')
f


