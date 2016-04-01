clear all;
close all;
clc;

% xt = sym(10); yt = sym(10);
% xp = sym(0); yp = sym(0);
% xe = sym(20); ye = sym(0);
vp = sym(1.5); ve = sym(1);

syms xp yp xe ye xt yt;

P = vp*vp/(vp*vp-ve*ve);
E = ve*ve/(vp*vp-ve*ve);
xc = (xe*P-xp*E);
yc = (ye*P-yp*E);
R = sqrt(xc^2+yc^2-(P*(xe*xe+ye*ye)+E*(xp*xp+yp*yp)));
alpha = R - sqrt((xt-xc)^2+(yt-yc)^2);

dxe = ve*(xt-xe)/sqrt((xt-xe)^2+(yt-ye)^2);
dye = ve*(yt-ye)/sqrt((xt-xe)^2+(yt-ye)^2);

syms tp;
 
dxp = vp*cos(tp);
dyp = vp*sin(tp);

dxc = P*dxe - E*dxp;
dyc = P*dye - E*dyp;

dR = (xc*dxc+yc*dyc-(P*(xe*dxe+ye*dye)-E*(xp*dxp+yp*dyp)))/(2*R);
dAlpha = dR + ((xt-xc)*dxc+(yt-yc)*dyc)/sqrt((xt-xc)^2+(yt-yc)^2);

f(tp) = subs(dAlpha,[xp yp xe ye xt yt],[0 0 20 0 20 5]);
f(0)
f(pi/2)
f(-pi/2)
