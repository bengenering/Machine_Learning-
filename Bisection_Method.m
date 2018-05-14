clear all
clc
% TAKING FUNCTION AS A USER INPUT %
f=input('Enterr function:')
% Approximate error which is convenient %
error=0.0001; 
% range as a user input %
x1=input('Lowest point of range:');
x2=input('Highest point of range:');
% Given script is to get the output %
% x3 is the average of two points which will be the new point %
x3=((x1+x2)/2);
while abs(f(x3))>error
    if (f(x3)*f(x1))<0
        x2=x3;  
    else
        x1=x3;
    end
    x3=((x1+x2)/2);
end
x3
