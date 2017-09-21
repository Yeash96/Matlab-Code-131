%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4 problem 1
%
%
%
%Fixed point method grapghically and anyliticaly
%problem 1 a 
% 
%
%==========================================================  

%clear pervious values
clc 
clear all

%initialize function
x=linspace((-1),2,100);
%y=x-(x.^5+5*x.^3-x.^2+1)/(5*x.^4+15*x.^2-2*x)
y=x.^5+5*x.^3-x.^2+1
g=x.^5+5*x.^3-x.^2+1+x
r=x
%graph it
plot(x,y,x,g,x,r,'r--')
%plot(x,g,x,r,'r--')
hold on;
plot(-0.51789,0,'k*')
%legend('g(x)','r(x)')
legend('y(x)','g(x)','r(x)')
grid on
axis on
%analytics 
i=1
l=-1.0
tol=10^-6
while (i<=length(x))
   z=l-(l^5+5*l^3-l^2+1)/(5*l^4+15*l^2-2*l)    %calculate P from Po[ld](note you can derive newtons method from fixed point)
  delP=abs(z-l)  %find diffrence btween P and Po record it in delp
  err(i)=delP
  if(delP<tol||delP==0) %check if delp= 0 or is within 0 + or - tolerance
      disp(z);          % if so break (done)
      break;
  else                  %eles continue the loop with Po= P
   i++
   l=z
  end
end


