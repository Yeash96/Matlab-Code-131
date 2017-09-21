function [I] = Simp_int (f,a,b,n)
x=linspace(a,b,(n+1));
h=(b-a)/n;
part1=f(a)+f(b);
for i=1:n
  if i==1
    part2=0;
    part3=0;
   endif
  if i==n
    break;
  endif
  if rem(i,2)==0
    part2=part2+f(x(i+1));
  endif
  if rem(i,2)!=0
    part3=part3+f(x(i+1));
  end
endfor
 I=h/3*(part1+2*part2+4*part3);
endfunction
