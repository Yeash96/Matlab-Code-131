clc
clear all
datx=[-5:1:5]
n=(length(datx))
x=[-5:0.001:5]
for l=1:n
fun1daty(l)=(exp(-datx(l).^2))
end

y1=lagrange_poly(x,datx,fun1daty)
