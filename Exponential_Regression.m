% MODEL Y=A*exp(B*x) %
clear all 
clc
% DATA ENTRY in the COLUMN format %
t=input('Enter the Data:');
lambda=(input('Enter the interval of B:'));
t
n=size(t); n=n(1);
lambda(3)=(lambda(1)+lambda(2))/2;
for i=1:1:3
    k=lambda(i);
    % exp(2*lambda*t) %
    t(:,5)=exp(t(:,1).*2*k);
    % y*exp(lambda*t) %
    t(:,4)=t(:,2).*sqrt(t(:,5));
    % y*t*exp(lambda*t) %
    t(:,3)=t(:,4).*t(:,1);
    A=sum(t(:,4))/sum(t(:,5));
    % Final function f %
    f(i)=A*(sum(t(:,1).*t(:,5)));
    error(i)=sum(t(:,3))-f(i);
end
while abs(error(3))>0.0001
    if f(1)*f(3)<0
        lambda(2)=lambda(3);
        lambda(3)=(lambda(1)+lambda(2))/2;
        for i=1:1:3
            k=lambda(i);
            % exp(2*lambda*t) %
            t(:,5)=exp(t(:,1).*2*k);
            % y*exp(lambda*t) %
            t(:,4)=t(:,2).*sqrt(t(:,5));
            % y*t*exp(lambda*t) %
            t(:,3)=t(:,4).*t(:,1);
            A=sum(t(:,4))/sum(t(:,5));
            % Final function f %
            f(i)=A*(sum(t(:,1).*t(:,5)));
            error(i)=sum(t(:,3))-f(i);
        end
    elseif f(2)*f(3)<0
        lambda(1)=lambda(3);
        lambda(3)=(lambda(1)+lambda(2))/2;
        for i=1:1:3
            k=lambda(i);
            % exp(2*lambda*t) %
            t(:,5)=exp(t(:,1).*2*k);
            % y*exp(lambda*t) %
            t(:,4)=t(:,2).*sqrt(t(:,5));
            % y*t*exp(lambda*t) %
            t(:,3)=t(:,4).*t(:,1);
            A=sum(t(:,4))/sum(t(:,5));
            % Final function f %
            f(i)=A*(sum(t(:,1).*t(:,5)));
            error(i)=sum(t(:,3))-f(i);
        end
    else
        break
    end
end
disp('THE REQUIRED CO_EFFICIENTS FOR A*exp^(B*x)');
disp('             A           ');
A
disp('             B           ');
B=lambda(3)
function_value=f(3)
        
    