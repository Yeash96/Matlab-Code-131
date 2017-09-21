function [w] = Euler( f,a,b,alpha,N )
h = (b-a)/N;
t=a;
w=alpha;
for i=(1:N)
    w=w+h*f(t,w);
    t=a+i*h;
    
end

end

