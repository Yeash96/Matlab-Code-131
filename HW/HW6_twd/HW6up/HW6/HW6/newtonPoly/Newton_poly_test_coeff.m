%inputs
datx=[-1,0,1/2,1,2]
daty=[6,1,0,0,4]
x=[4:6]
%===============
n=length(daty)
k=1
F=zeros(n)
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
