%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4
%problem 2 newtons method for a and b 
%==========================================================  
close all
clc 
clear all
a=@(x)cos(x+sqrt(2))+x*(x/2+sqrt(2));
da=@(x)x-sin(x+sqrt(2))+sqrt(2);

b=@(z)exp(6*z)+3*((log(2))^2)*exp(2*z)-log(8)*exp(4*z)-(log(2))^3
db=@(z)6*exp(6*z)-4*log(8)*exp(4*z)+6*log(2)^2*exp(2*z)

i=1;
x=-2;
N=100;
TOL=10^-5;
t=1;
z=-1;
err=[];
errb=[];

while(i<=N)
   xn(i)=x-(a(x)/da(x))
   err(i)=abs(xn(i)-x)
   if(err(i)<=TOL||err(i)==0)
      disp(i)
      disp(x)
      break;
   end
   x=xn(i)
   i++
end

while(t<=N)
   zn(t)=z-(b(z)/db(z))
   errb(t)=abs(zn(t)-z)
   if(errb(t)<=TOL||errb(t)==0)
      disp(t)
      disp(z)
      break;
   end
   z=zn(t)
   t++
end

n=length(err)-1
k=length(errb)
aa=log(err(2:n))./log(err(1:n-1))
ab=log(errb(2:k))./log(errb(1:k-1))

disp('=======')
disp('number of iterations to solve function a:')
disp(i)
disp('the root for function a is located at:')
disp(x)
disp('the order of convergence for function a is:')
disp(aa(n-1))
disp('=======')
disp('number of iterations to solve function b:')
disp(t)
disp('the root for function b is located at:')
disp(z)
disp('the order of convergence for function b is:')
disp(ab(k-1))

subplot(1,2,1)
loglog(err(2:n),(err(1:n-1)),'*-')
axis on 
title("newton's method error for a")
xlabel('number of iteration')
ylabel('log(error)')

subplot(1,2,2)
loglog(errb(2:k),(errb(1:k-1)),'*-')
axis on 
title("newton's method error for b")
xlabel('number of iteration')
ylabel('log(error)')

