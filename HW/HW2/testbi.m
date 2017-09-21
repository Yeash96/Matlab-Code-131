%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis
%Title: Bisectional method
% HW2
%==========================================================
%f=x^3
clc
clear all

A=-pi()/2
B=(3*pi())/4
Ps=1
f=1
i=0
Ps=A+(B-A)/2

while(true)
cast(Ps, "double")
cast (f, "double")
 f=sin(Ps);
  if(abs(f)<10^-5)
    break;
  end
  
  if(f>0)
    B=Ps;
  end
  
  if(f<0)
    A=Ps;
  end
 Ps=A+(B-A)/2
 i++ 
 %disp('f=')
 %disp(f)
 %disp('Ps')
 %disp(Ps)
 end
disp('f=');
disp(f);
disp('Ps');
disp(Ps)
disp(i)