%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4 problem 1
%
%
%
%Fixed point method 
%
% 
%
%==========================================================  

%clear pervious values
clc 
clear all

%initialize variables 
i=1
x=-1.0
N=100
tol=10^-6
%Algorithom 
while (i<=N)
   y=x-(x^5+5*x^3-x^2+1)/(5*x^4+15*x^2-2*x)    %calculate P from Po[ld](note you can derive newtons method from fixed point)
  delP=abs(y-x)  %find diffrence btween P and Po record it in delp
  err(i)=delP
  if(delP<tol||delP==0) %check if delp= 0 or is within 0 + or - tolerance
      disp(y);          % if so break (done)
      break;
  else                  %eles continue the loop with Po= P
   i++
   x=y
  end
end