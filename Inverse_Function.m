clear all;
clc;
% Input of a matrix of which Inverse is required %
A=input('Enter the Matrix A:')
b=size(A);
% creating Identity matrix %
B=eye(b(1));
n=1;
% Applying Gauss Jordan Method %
while n<=b(2)
    for m=b(1):-1:n+1
        T=A(m,n)/A(m-1,n);
        A(m,:)=A(m,:)-(A(m-1,:)*A(m,n)/A(m-1,n));
        B(m,:)=B(m,:)-B(m-1,:)*T;
    end
    n=n+1;
end
n=b(2);
while n>1
    for m=1:1:n-1
        S=A(m,n)/A(m+1,n);
        A(m,:)=A(m,:)-A(m+1,:)*A(m,n)/A(m+1,n);
        B(m,:)=B(m,:)-B(m+1,:)*S;
    end
    n=n-1;
end
for i=1:1:b(1)
    B(i,:)=B(i,:)/A(i,i);
    A(i,:)=A(i,:)/A(i,i);
end
% Output %
[A,B]
