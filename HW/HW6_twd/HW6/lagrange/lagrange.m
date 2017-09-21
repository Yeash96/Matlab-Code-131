clc
clear all
x=[1:3]
datx=[-1,0,1]
daty=[1,0,1]

n=length(datx)
q=length(x)
l=ones(1,n)
w=zeros(1,q)
y=0

for z=1:q
t=z
l=ones(1,n)
y=0
  for i=1:n
  k=i
   for j=1:n
         if (j==k)
       continue;
       else
       disp('=========')
       disp('l(k)')
       disp(l(k))
       disp('x(t)')
       disp(x(t))
       disp('datx(j)')
       disp(datx(j))
       disp('datx(k)')
       disp(datx(k))
       disp('=========')
       l(k)=l(k)*((x(t)-datx(j))/(datx(k)-datx(j)))      
       end
     end 
   disp('=========')
   disp(y)
   disp(daty(k))
   disp(l(k))
   disp('=========')  
   y=y+daty(k)*l(k)
   w(z)=y  
  end  
end