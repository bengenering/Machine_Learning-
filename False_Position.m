clear all 
clc
% functioning to take user input %
f=input('Enter function:')
error=0.0001;
% initial and end points of the range %
x1=input('Lowest point of range:');
x2=input('Highest point of range:');
% x3 is the root of the function lying in the range %
x3=(x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
while abs(f(x3))>error
    x1=x3;
    x3=(x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
end
% output final x3 %
x3