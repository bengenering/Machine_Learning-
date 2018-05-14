clear all
clc
% User input of vector matrix %
A=input('Enter the A:');
B=input('Enter the B:');
[A,B]
b=size(A);
i=1;
% initial condition of x %
while i<=b(1) 
    x(i,1)=0;
    i=i+1;
end
for n=2:1:10
    for m=1:1:b(1)
        x(m,n)=B(m)/A(m,m);
        for j=1:1:b(1)
            if j~=m
                x(m,n)=x(m,n)-(A(m,j)*x(j,n-1)/A(m,m));
            end
        end
    end
end
% Solution to equation %
x(:,n)
    
        
    
                