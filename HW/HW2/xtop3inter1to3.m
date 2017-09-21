function [Ps,f,i] = xtop3inter1to3(N)


n=N
A=-pi()/2
B=(3*pi())/4
Ps=1
f=0
i=0
Ps=A+(B-A)/2
 switch (X)
       case 1
         do_something ();
       case 2
         do_something_else ();

         
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
 if (i>=n)
  break;
 end
 %disp('f=')
 %disp(f)
 %disp('Ps')
 %disp(Ps)
 end
 otherwise
  return;
endswitch

