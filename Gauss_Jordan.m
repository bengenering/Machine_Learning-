clear all
clc
% [A,B] is the set of equation: %
A=input('Enter A Matrix:');
B=input('Enter B Matrix:');
[A,B]
b=size(A);
n=1;
while n<=b(2)
    for m=b(1):-1:n+1
        T=A(m,n)/A(m-1,n);
        A(m,:)=A(m,:)-(A(m-1,:)*A(m,n)/A(m-1,n));
        B(m)=B(m)-B(m-1)*T;
    end
    n=n+1;
end
n=b(2);
while n>1
    for m=1:1:n-1
        S=A(m,n)/A(m+1,n);
        A(m,:)=A(m,:)-A(m+1,:)*A(m,n)/A(m+1,n);
        B(m)=B(m)-B(m+1)*S;
    end
    n=n-1;
end
for i=1:1:b(1)
    X(i,1)=B(i)/A(i,i);
end
% Output X is solution and Eliminated [A,B] %
[A,B]
X


    