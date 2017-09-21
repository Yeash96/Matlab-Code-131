clc
clear all
b=@(z)exp(6*z)+3*((log(2))^2)*exp(2*z)-log(8)*exp(4*z)-(log(2))^3
db=@(z)6*exp(6*z)-4*log(8)*exp(4*z)+6*log(2)^2*exp(2*z)

N=100;
TOL=10^-5;
t=1;
z=-1;
errb=[];


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

subplot(1,2,2)
loglog(1:length(errb),(errb),'*-')
axis on 
title("newton's method error for b")
xlabel('number of iteration')
ylabel('log(error)')
