%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4
%
%problem 2 secantmethod method for a and b 
%
%==========================================================  
clc 
clear all
a=@(x)exp(-x)-x

b=@(z)exp(6*z)+3*((log(2))^2)*exp(2*z)-log(8)*exp(4*z)-(log(2))^3

i=1;
x=0;
x1=1;
N=100;
TOL=10^-5;
err=[];
while(i<=N)
    xn(i)=x1-(a(x1)*(x-x1))/(a(x)-a(x1))
    err(i)=abs(xn(i)-x1)
   if(err(i)<=TOL||err(i)==0)
      disp(i)
      disp(x)
      break;
   end
   x=x1
   x1=xn(i)
   i++
end
