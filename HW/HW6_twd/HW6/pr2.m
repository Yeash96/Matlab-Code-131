clc
clear all
close all
datx=[-5:1:5];
n=(length(datx));
x=[-5:0.001:5];
u=length(x);
for l=1:n
fun1daty(l)=(exp(-datx(l).^2));
end
y1i=lagrange_poly(x,datx,fun1daty);
for z=1:u
y1(z)=(exp(-x(z).^2));
end
for q=1:u
    abserror1(q)=abs(y1(q)-y1i(q));
end
subplot(2,1,1)
plot(x,y1i,'-b',x,y1,'-r',x,abserror1,'g--')
legend('y  interpolation (lagrange poly)','y real','absolute error')
xlabel('x=[-5:0.001:5]')
ylabel('funtion return=(y)')
title('function=exp(-x^2)')
for l=1:n
fun2daty(l)=(1./(1+datx(l).^2));
end
y2i=lagrange_poly(x,datx,fun2daty);
for z=1:u
y2(z)=(1./(1+x(z).^2));
end
for q=1:u
    abserror2(q)=abs(y2(q)-y2i(q));
end
subplot(2,1,2)
plot(x,y2i,'-b',x,y2,'-r',x,abserror2,'g--')
legend('y  interpolation (lagrange poly)','y real','absolute error')
xlabel('x=[-5:0.001:5]')
ylabel('funtion return (y)')
title('function=1/(1+x^2)')
