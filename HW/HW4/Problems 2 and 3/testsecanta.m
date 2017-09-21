clc 
clear all
a=@(x)cos(x+sqrt(2))+x*(x/2+sqrt(2));

i=1;

x=-2;
x1=-1.5;
N=100;
TOL=10^-5;

err=[];

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

%subplot(1,2,1)
%loglog(1:length(err),err,'*-')
%axis on 
%title("secant method error for a")
%xlabel('number of iteration')
%ylabel('log(error)')