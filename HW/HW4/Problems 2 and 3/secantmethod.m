%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4
%
%problem 2 secantmethod method for a and b 
%
%problem 3
% newtons is quadratic and requires the deriviative of the
% function also takes less iterations.
%
% Secant does not require the derivative of the function and 
% therfore less function evaluations. 
%
%==========================================================  
close all
clc 
clear all
a=@(x)cos(x+sqrt(2))+x*(x/2+sqrt(2));
b=@(z)exp(6*z)+3*((log(2))^2)*exp(2*z)-log(8)*exp(4*z)-(log(2))^3

N=100;
TOL=10^-5;
i=1;
t=1;

x=-2;
x1=-1.5;
err=[];

errb=[];
z=-1
z1=-0.999



while(i<=N)
    xn(i)=x1-(a(x1)*(x1-x))/(a(x1)-a(x))
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

while(t<=N)
    zn(t)=z1-(b(z1)*(z1-z))/(b(z1)-b(z))
    errb(t)=abs(zn(t)-z1)
   if(errb(t)<=TOL||errb(t)==0)
      disp(t)
      disp(z)
      break;
   end
   z=z1
   z1=zn(t)
   t++
end

u=length(err)-1
n=length(errb)

aa=log(err(2:u))./log(err(1:u-1))
ab=log(errb(2:n))./log(errb(1:n-1))

disp('=======')
disp('number of iterations to solve function a:')
disp(i)
disp('the root for function a is located at:')
disp(x)
disp('the order of convergence for function a is:')
disp(aa(u-1))
disp('=======')
disp('number of iterations to solve function b:')
disp(t)
disp('the root for function b is located at:')
disp(z)
disp('the order of convergence for function b is:')
disp(ab(n-1))

subplot(1,2,1)
loglog(errb(2:u),err(1:u-1),'*-')
axis on 
title("secant method error for a")
xlabel('number of iteration')
ylabel('log(error)')

subplot(1,2,2)
loglog(errb(2:n),errb(1:n-1),'*-')
axis on 
title("secant method error for b")
xlabel('number of iteration')
ylabel('log(error)')
