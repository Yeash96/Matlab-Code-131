clc
clear all
close all
datx=[-5:1:5]
n=(length(datx))
x=[-5:0.001:5]
u=length(x);
for l=1:n
fun1daty(l)=(exp(-datx(l).^2));
end
y1i=lagrange_poly(x,datx,fun1daty);
for z=1:u
y1(z)=(exp(-x(z).^2));
end
subplot(2,1,1)
plot(x,y1i,'-b',x,y1,'-r')
legend('y  interpolation (lagrange poly)','y real')
xlabel('x=[-5:0.001:5]')
ylabel('funtion return=(y)')
title('function=exp(-x(z)^2)')
for l=1:n
fun2daty(l)=(1./(1+datx(l).^2));
end
y2i=lagrange_poly(x,datx,fun2daty);
for z=1:u
y2(z)=(1./(1+x(z).^2));
end
subplot(2,1,2)
plot(x,y2i,'-b',x,y2,'-r')
legend('y  interpolation (lagrange poly)','y real')
xlabel('x=[-5:0.001:5]')
ylabel('funtion return (y)')
title('function=1/(1+x(z)^2)')
