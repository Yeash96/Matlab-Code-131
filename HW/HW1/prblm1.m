clc
clear all
while (true)

AE=0

RE=0

P=input('P=');
PS=input('PS=');

AE=abs(P-PS);

rele=((abs(P-PS))/(abs(P)));

disp('AE=');
disp(AE);
disp('RE=');
disp(rele);
end