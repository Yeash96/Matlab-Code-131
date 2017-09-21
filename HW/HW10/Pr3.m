clc
clear all
close all

f = @(t,y) (sin(2*t)-2*t*y)./t.^2;
a=1;
b=2;
alpha=2;
t=2;
y=(4+cos(2)-cos(2*t))./(2*t.^2);
for i=(1:4)
    N=10^i;
    xx(i)=N;
    
    Euz(i)= Euler(f,a,b,alpha,N);
    errEuz(i)=abs(Euz(i)-y);
    RK2z(i)= RK2(f,a,b,alpha,N);
    errRK2z(i)=abs(RK2z(i)-y);
    RK4z(i) = RK4(f,a,b,alpha,N);
    errRK4z(i)=abs(RK4z(i)-y);
    AB2z(i) = AB2(f,a,b,alpha,N);
    errAB2z(i)=abs(AB2z(i)-y);
end

loglog(xx,errEuz,'-*',xx,errRK2z,'-*',xx,errRK4z,'-*',xx,errAB2z,'-*')
legend('Euler','RK2','RK4','AB2','Location', 'Southwest')
title({'IVP:','y''=(sin(2t)-2ty)/t^2  1 to 2','y(1)=2'})
xlabel('Iteration')
ylabel('Absolute Error')