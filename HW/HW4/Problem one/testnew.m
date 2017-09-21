%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: HW4 problem 1
%
%
%
%Newton method
%
% 
%
%==========================================================
 i=1
 Po=0
 f=cos(Po)
 fdot=-sin(Po)
 N=100
 tol=10^-3
 while(i<=N)
   P=Po-f/fdot
   deltaP=abs(P-Po)
     if(deltaP<tol||deltaP==0)
        disp(P)
        break;
      end
    i++
    Po=P
 end