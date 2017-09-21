function [y] = Newton_poly (x, datx,daty)

n=length(daty);
u=length(x);
k=1;
F=zeros(n);
y=zeros([1,u]);
p=zeros([1,u]);
g=ones([u,n]);

while(k<=n)
  F(k,1)=daty(k);
  k = k + 1;
end

for i=2:n
  for j=2:i
     if i==j
       F(i,j)=(F(i,j-1)-F(i-1,j-1))/(datx(i)-datx(1));
     else
      F(i,j)=(F(i,j-1)-F(i-1,j-1))/(datx(i)-datx(i-j+1));
      end
  end
end

for q=1:n
  a(q)=F(q,q);
end

for l=1:u
  for d=2:n
    if d==2
      g(l,d)=x(l)-datx(d-1);
    else
    g(l,d)=g(l,d-1)*x(l)-datx(d-1);
    end
  end
end

for r=1:u
  for c=1:n
   y(r)=g(r,c)*a(c)+y(r);
  end
end

end
