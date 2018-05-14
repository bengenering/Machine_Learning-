clear all
clc
% Equation matrix input[A,B] %
A=input('Enter A Mat.:');
B=input('Enter B Mat.:');
[A,B]
b=size(A);
% Initial condition of X %
for i=1:1:b(1)
    x(i,1)=0;
end
for n=2:1:50
    for m=1:1:b(1)
        x(m,n)=0;
        j=1;
        while j<=b(1)
            if j~=m
                x(m,n)=x(m,n)-A(m,j)*x(j,n)/A(m,m);
            end
            j=j+1;
        end
        x(m,n)=x(m,n)+B(m)/A(m,m);
        x(m,n+1)=x(m,n);
    end
end
% Solution to Equation %
x(:,n)
    
