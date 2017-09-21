function [f,Ai,Bi] = oneD(Ps)
Ai=0.5
Bi=5
if(Ps<2)
  f=0
else
  f=-Ps+3
end

  