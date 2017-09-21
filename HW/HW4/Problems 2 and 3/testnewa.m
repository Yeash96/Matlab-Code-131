clc
clear all

a=@(x)cos(x+sqrt(2))+x*(x/2+sqrt(2));
da=@(x)x-sin(x+sqrt(2))+sqrt(2);

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

subplot(1,2,1)
loglog(1:length(err),(err),'*-')
axis on 
title("newton's method error for a")
xlabel('number of iteration')
ylabel('log(error)')