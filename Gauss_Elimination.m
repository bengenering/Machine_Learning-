clear all
clc 
% input Matrix accordind to 'AX=B' %
A=input('Enter Data:');
B=input('Enter Data:');
[A,B]
b=size(A); 
n=1;
% Processing for Gauss Elimination %
while n<=b(2)
    for m=b(1):-1:n+1
        T=A(m,n)/A(m-1,n);
        A(m,:)=A(m,:)-(A(m-1,:)*A(m,n)/A(m-1,n));
        B(m)=B(m)-B(m-1)*T;
    end
    n=n+1;
end
% A/B Eliminated Matrix % 
disp('ELIMINATED MATRIX');
[A,B]
disp('Solution:')
rref([A,B])
