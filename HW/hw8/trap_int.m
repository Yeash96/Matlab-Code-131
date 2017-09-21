function [I] = trap_int (f,a,b,n)
x=linspace(a,b,(n+1));
h=(b-a)/n;
part1=f(a)+f(b);
for i=1:n
  if i==1
    part2=0;
   endif
  if i==n
    break;
  endif
   part2=(f(x(i+1)))+part2;
endfor
I=h/2*(part1+2*part2);
   
endfunction
