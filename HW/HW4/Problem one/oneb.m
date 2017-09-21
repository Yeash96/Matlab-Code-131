%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4
%Fixed point method grapghically and anyliticaly
%problem 1 b 
%==========================================================  

%clear pervious values
close all
clc 
clear all
x=linspace((-1),2,100);
y=x.^4-8*x.^3+24*x.^2-32*x+16
g=x.^4-8*x.^3+24*x.^2-32*x+16+x
r=x

i=1
l=-1
tol=10^-6
while (i<=100)
   z=l-(l^4-8*l^3+24*l^2-32*l+16)/(4*l^3-24*l^2+48*l-32)   %calculate P from Po[ld](note you can derive newtons method from fixed point)
  delP=abs(z-l)  %find diffrence btween P and Po record it in delp
  err(i)=delP
  if(delP<tol||delP==0) %check if delp= 0 or is within 0 + or - tolerance
      disp('number of iteration:')
      disp(i)
      disp('value of function and x value')
      disp(z)         % if so break (done)
      break;
  else                  %eles continue the loop with Po= P
   l=z
   i++
  end
end

%graph functions
subplot(1,2,1)
plot(x,y,x,g,x,r,'r--')

hold on;
plot(1.9999,0,'k*')
%legend('g(x)','r(x)')
legend('y(x)','g(x)','r(x)')
title('1b functions')
xlabel('x')
ylabel('y(x),g(x),r(x)')
grid on
axis on

%graph errors
subplot(1,2,2)
n=length(err)-1
loglog(1:n,err(1:n),'*-')
title('1b logarithmic errors')
xlabel('x')
ylabel('y(x),g(x),r(x)')
grid on
axis on