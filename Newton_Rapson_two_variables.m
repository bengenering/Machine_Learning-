clear all 
clc
syms x y
% two different main function with two variable f and g and their %
% Derivatives with respect to x and y both %
f=input('Enter Function : ')
g=input('Enter function : ')
f1=inline(diff(f(x,y),x),'x','y');
g1=inline(diff(g(x,y),x),'x','y');
f2=inline(diff(f(x,y),y),'x','y');
g2=inline(diff(g(x,y),y),'x','y');
% initial condition for variables %
x=input('Enter X0:');
y=input('Enter Y0:');
a=[f1(x,y) f2(x,y);g1(x,y) g2(x,y)];
b=inv(a)*[-f(x,y);-g(x,y)];
x(2)=x(1)+b(1);
y(2)=y(1)+b(2);
i=2;
error=0.0001;
while abs(f(x(i),y(i)))>error
    a=[f1(x(i),y(i)) f2(x(i),y(i));g1(x(i),y(i)) g2(x(i),y(i))];
    b=(inv(a)*[-f(x(i),y(i));-g(x(i),y(i))]);
    x(i+1)=x(i)+b(1);
    y(i+1)=y(i)+b(2);
    i=i+1;
end
% (x,y) intersection point of the functions f and g %
disp('X')
x(i)
disp('Y')
y(i)
    
    







