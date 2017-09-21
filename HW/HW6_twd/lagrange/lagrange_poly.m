function [w] = lagrange_poly (x, datx,daty)

n=length(datx)
q=length(x)
l=ones(1,n)
w=zeros(1,q)

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
endfunction
