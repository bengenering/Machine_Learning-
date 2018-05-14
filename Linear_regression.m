%nth order polynomial regression
clc;
clear all;
format long;
y=[80 6.47e-6;40 6.24e-6;-40 5.72e-6;-120 5.09e-6;-200 4.30e-6;-280 3.33e-6;-340 2.45e-6];
% y=input('enter matrix as (x,y) : ');
z=input('enter order : ');
y
[m n]=size(y);
c=zeros((2*z),1);
w=zeros(z,1);
for i=1:1:(2*z)
    b=0;
    for j=1:m       
        b=b+((y(j,1))^(i));        
    end
    c(i,1)=b;
end
b=0;
for i=0:1:z
    b=0;
    for j=1:1:m
        b=b+(y(j,2)*(y(j,1)^i));
    end
    w(i+1,1)=b;   
end  
f=zeros(z+1,z+1);
f(1,1)=m;
k=1;
r=1;
for i=1:(z+1)
    for q=1:(z+1)
        if i==1 & q==1
        else
            f(i,q)= c(r,1) ;
            r=r+1;
        end
    end
    r=i;
end
f(1,1)=m;
l=zeros(z+1,0);
a=inv(f);
l=a*w;
l

        
        
        
        
        
        
        


