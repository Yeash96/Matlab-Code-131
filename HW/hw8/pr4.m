clc
clear all
close all
f= @(x) (1/sqrt(2*pi()))*exp(-x^2/2);
a=-2;
b=2;
for i=1:4
n=10^i;
xx(i)=n;

trap(i)=trap_int (f,a,b,n);
simp(i)=Simp_int (f,a,b,n);
endfor 
disp('for part A:') 
disp('  Trapizod method: ')
disp(trap)
disp('  Simpson method: ')
disp(simp)
exact=(erf(sqrt(2))-erf(-sqrt(2)))/2;
disp('exact value:')
disp(exact)
for j=1:4

error1(j)=abs(trap(j)-exact);
error2(j)=abs(simp(j)-exact);
endfor
loglog(xx,error1,'-o',xx,error2,'-o')
legend('Trapizod method','Simpson method')
grid on 
xlabel('n-value')
ylabel('estimation of integral')
title('integral of(1/sqrt(2*pi()))*exp(-x^2/2)')