clc
clear all
%inputs
datx=[(-1),0,1]
daty=[1/3,1,3]
x=[1,2,3,4]
%===============
n=length(daty)
u=length(x)
k=1
F=zeros(n)
y=zeros([1,u])
p=zeros([1,u])
g=ones([u,n])
while(k<=n)
  F(k,1)=daty(k)
  k++
end
for i=2:n
  for j=2:i
     if i==j
       F(i,j)=(F(i,j-1)-F(i-1,j-1))/(datx(i)-datx(1))
     else
      disp(i)
      disp(j)
      F(i,j)=(F(i,j-1)-F(i-1,j-1))/(datx(i)-datx(i-j+1))
      disp('============')
      end
  end
end

for q=1:n
  a(q)=F(q,q)
end

for l=1:u
  for d=2:n
    if d==2
    disp('+++++++++++++++')
      disp(l)
      disp(d)
      disp(x(l))
      disp(datx(d))
      g(l,d)=x(l)-datx(d-1)
      disp('+++++++++++++++')
    else
    g(l,d)=g(l,d-1)*x(l)-datx(d-1)
    end
  end
end

for r=1:u
  for c=1:n
   disp('+++++++++++++++')
   disp(g(r,c))
   disp(a(c))
   disp(y(r))
   y(r)=g(r,c)*a(c)+y(r)
  end
end

%y=p+coe0