function [ Z ] = AB2( f,a,b,alpha,N )
h = (b-a)/N;
t(1)=a;
w(1)=alpha;
k1=f(t(1),w(1));
t(2)=a+h;
k2=f(t(2),w(1)+h*k1);
w(2)=w(1)+h./2*(k1+k2);
for i=(2:N) 
    w(i+1)=w(i)+h/2*(3*f(t(i),w(i))-f(t(i-1),(w(i-1))));
    t(i+1)=a+i*h;
    Z=w(i+1);
end

end

