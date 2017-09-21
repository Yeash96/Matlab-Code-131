function [ w ] = RK2(f,a,b,alpha,N)
h = (b-a)/N;
t=a;
w=alpha;
for i=(1:N)
    k1=f(t,w);
    t=a+i*h;
    k2=f(t,w+h*k1);
    w=w+h/2*(k1+k2);
end

end

