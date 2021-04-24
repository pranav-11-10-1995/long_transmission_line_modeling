clc;
length=500;
disp('transmission line impedance')
z=0.105+i*0.3768
disp('Shunt Admittance')
y=0+i*2.822*10^-6
f=50;
mva=40*10^6;
vrline=220*10^3;
pf=0.9;
gamma=sqrt(z*y)
gammal=gamma*length
zc=sqrt(z/y)
a=cosh(gammal)
b=zc*sinh(gammal)
c=sinh(gammal)/zc
d=a
disp('receiving end voltage & current')
vrph=vrline/sqrt(3)
disp('Before incorporating power factor angle ')
irmag=mva/(3*vrph)%mva=3*vph*iph 
disp('Receiving end power factor angle')
theta=acos(pf)*(-1)%theta is in radian
disp('After incorporating power factor angle ')
ir=irmag.*exp(i*theta)% converting  mag*angle(theta) -> a+ib 
disp('       Sending end voltage ,current,power factor ')
vs=a*vrph+b*ir
is=c*vrph+d*ir
sendingpf=cos(angle(is)-angle(vs))
inpow=3*abs(vs)*abs(is)*cos(angle(vs)-angle(is))%i/p power=3*|vs|*|is|*cos(sending voltage angle-sending current angle); (sending end power)
outpow=3*vrph*irmag*pf%o/p power=3*|vr|*|ir|*power factor(receiving end power)
efficiency=(outpow/inpow)*100