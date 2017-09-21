 clc
clear all
x=2
datx=[-1,0,1]
daty=[1,0,1]
n=length(datx)
l=ones(1,n)
y=0
for i=1:n
  k=i
   for j=1:n
         if (j==k)
       continue;
       else
%       disp('=========')
%       disp('l(k)')
%       disp(l(k))
%       disp('x(t)')
%       disp(x)
%       disp('datx(j)')
%       disp(datx(j))
%       disp('datx(k)')
%       disp(datx(k))
%       disp('=========')
       l(k)=l(k)*((x-datx(j))/(datx(k)-datx(j)))      
       end
     end
   disp('=========')
   disp(y)
   disp(daty(k))
   disp(l(k))
   disp('=========')  
   y=y+daty(k)*l(k)  
end 