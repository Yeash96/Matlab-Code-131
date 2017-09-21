%==========================================================
%Name: Yeash Patel
%Class: Math131-Numerical Analysis-05D-SP17
%Title: Bisectional method
%HW2
%
%a)Can not use bisection method since all the values during that interval is positive
%
%b&c)We can use bisection method
%
%d)Function is not continuous
%
%e)We can use bisection method 
%
%==========================================================  
clc
clear all
while(true)

c=input('choose problems number(1)(2)(3):')
N=input('Enter maximum iterations N:')

  switch (c)
    case {1}
      printf('(1) f(x) = x^3            on [1,3];        \n(2) f(x) = x^3            on [-3,1];       \n(3) f(x) = sinx           on [-pi/2,3pi/4];\n(4) f(x) = 0,   x < 2     on [0.5,5]\n           -x+3 x >= 2;       \n(5) f(x) = 0,   x < 2     on [2,5] \n           -x+3 x >=2;    \n')
      chfun=input('choose function (note program will check validility if approved TOL=10^(-5)):')
      TOL=10^(-5)
    case {2}
      printf ("(1) 2x+3cos(x)-exp(x)=0  for 0<=x<=1;        \n(2) x^2-4x+4-log(x)       \n");
      chfun=input('choose function (note program will check validility if approved TOL=10^(-5)):')    
      TOL=10^(-5)
      if(chfun==2)
        interval=input('you have choosen option 2 please select interval (1)=1<=x<=2; (2) 2<=x<=4')
      end
    case {3}
      printf ("2016^(1/3) with Tolerance=10^-4");
      TOL=10^-4
    otherwise
      printf ("not valid!");
    endswitch

A=-1
B=2
i=0
Ps=1
%e=99
  while(true)
    if(i>=N+2)
      break;
    end
    disp(i) 
    if(c==1)
      if(chfun==1)
        [f,Ai,Bi] = oneA(Ps)
      elseif(chfun==2)
        [f,Ai,Bi] = oneB(Ps)
      elseif(chfun==3)
        [f,Ai,Bi] = oneC(Ps)
      elseif(chfun==4)
        %[f,Ai,Bi] = oneD(Ps)
        printf('function is not continuous please ingnore the following output')
          break;
        elseif(chfun==5)
        [f,Ai,Bi] = oneE(Ps)
      else
        printf("error invalid functions choice")
 %       e=4
        break;
      end
    elseif(c==2)
      if(chfun==1)
        [f,Ai,Bi] = twoA(Ps)
      elseif(chfun==2)
        if(interval==1)
          [f,Ai,Bi] = twoBone(Ps)
        elseif(interval==2)
          [f,Ai,Bi] = twoBtwo(Ps)
        else
 %         e=5
          break;
        end 
       end 
    elseif(c==3)
      [f,Ai,Bi] = threeA(Ps)
    else
 %     e=5
      break;
    end

  
    if(i==0)
      Ps=Ai
      printf('\n')
    elseif(i==1)
      fa=f
      Ps=Bi
      printf('\n')
    elseif(fa*f>0 && i==2)
      printf('bisection therom does not apply therefore neither does this algorithm')
      break;
 %     e=1
    elseif(i==2)
      A=Ai
      B=Bi
      Ps=A+(B-A)/2
    elseif(i>2)
    
      if(abs(f)<TOL||f==0)
      disp("p is approx:"),disp(Ps)
      disp("iterations:") ,disp(i-2)
      disp("final value of functions:"),disp(f)
        break;
      end
 
      if(f>0)
       B=Ps;
      elseif(f<0)
        A=Ps;
      else
 %      e=2 
       printf('error')
       break; 
      end
      
      Ps=A+(B-A)/2
    else
 %     e=3
      printf('error')
      break;
    end  
  
   i++ 
  end  
 % disp(e)
end