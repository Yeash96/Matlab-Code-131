%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4
%
%
%Fixed point method grapghically and anyliticaly
%problem 2 newtons method for a and b 
% 
%
%==========================================================  
clc 
clear all
a=@(x)cos(x+sqrt(2))+x*(x/2+sqrt(x))
da=@(x)-sin(x+sqrt(2))+(1/(2*sqrt(x))+1/2)*x+x/2+sqrt(x)

b=@(z)exp(6*z)+3*((log(2))^2)*exp(2*z)-log(8)*exp(4*z)-(log(2))^3
db=@(z)6*exp(6*z)-4*log(8)*exp(4*x)+6*log(2)^2*exp(2*x)

i=1;
x=0.01;
N=100;
TOL=10^-5;
t=1;
z=-1;
err=[];
errb=[];
while(i<=N)
   xn(i)=x-(a(x)/da(x))
   err(i)=abs(xn(i)-x)
   if(err(i)<=TOL)
      disp(i)
      disp(x)
      break;
   end
   x=xn(i)
   i++
end

while(t<=N)
   zn(t)=z-(a(z)/da(z))
   errb(t)=abs(zn(t)-z)
   if(errb(t)<=TOL||errb(t)==0)
      disp(t)
      disp(z)
      break;
   end
   z=zn(t)
   t++
end


subplot(1,2,1)
plot(1:length(err),log(err))
axis on 
title("newton's method error")
xlabel('number of iteration')
ylabel('log(error)')

subplot(1,2,2)
plot(1:length(errb),log(errb))
axis on 
title("secant method error")
xlabel('number of iteration')
ylabel('log(error)')

