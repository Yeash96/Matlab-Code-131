clc
clear all
close all
f=@(x) exp(-x^2)*sin(x);
df=@(x) exp(-x^2)*cos(x)-2*x*exp(-x^2)*sin(x);

%x0=input('x0:')
x0=0

for n=1:6
  h=10^(-n);
  xx(n)=h;
  
  fowdiffnum(n)=(f(x0+h)-f(x0))/h;
  error1(n)=abs(fowdiffnum(n)-df(x0));
  
  ThreePointCentDiff(n)=(f(x0+h)-f(x0-h))/(2*h);
  error2(n)=abs(ThreePointCentDiff(n)-df(x0));
  
  ThreePointOneSideDiff(n)=(-f(x0+2*h)+4*f(x0+h)-3*f(x0))/(2*h);
  error3(n)=abs(ThreePointOneSideDiff(n)-df(x0));
  
  FivePointCentDiff(n)=(-f(x0+2*h)+8*(f(x0+h))-8*(f(x0-h))+(f(x0-2*h)))/(12*h);
                      %(-f(x0+2*h)+8*(f(x0+h))-8*(f(x0-h))+(f(x0-2*h)))/(2*h)
  error4(n)=abs(FivePointCentDiff(n)-df(x0));
end

loglog(xx,error1,'-o',xx,error2,'-o',xx,error3,'-o',xx,error4,'-o')
legend('FD','3PCD','3POSD','5PCD',"location", "northeastoutside");
grid on 
xlabel('xx-value')
ylabel('error of the estimation for deriv.')
title(' deriv. of exp(-x^2)*sin(x)')


disp('xx:')
disp(xx)
disp('FD:')
disp(fowdiffnum)
disp('FD error:')
disp(error1)
disp('3PCD')
disp(ThreePointCentDiff)
disp('3PCD error:')
disp(error2)
disp('3POSD')
disp(ThreePointOneSideDiff)
disp('3POSD error:')
disp(error3)
disp('5PCD')
disp(FivePointCentDiff)
disp('5PCD error:')
disp(error4)
disp('exact:')
disp(df(x0))