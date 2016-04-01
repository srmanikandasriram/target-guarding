function z = reachableSpaceDubinsT(x,y,x0,y0,t0,v,R,T,all_primitives)
%%
% Starting configuration of the differential drive robot is (x0,y0,t0).
% Maximum linear velocity of the robot is v and the minimum turning radius
% of the robot is R.
% T is the simulation time.
% By default only L(t)S(T-t) and R(t)S(T-t) primitives are used.
% all_primitives is a boolean variable which controls what primitives
% are used.
% x and y are symbolic variables

if ~exist('all_primitives','var')
    all_primitives = false;
end
Xc1 = x0+R*cos(pi/2+t0);
Yc1 = y0+R*sin(pi/2+t0);
Xc2 = x0+R*cos(-pi/2+t0);
Yc2 = y0+R*sin(-pi/2+t0);

z = 1/((x-Xc1)^2+(y-Yc1)^2>R^2)+1/((x-Xc2)^2+(y-Yc2)^2>R^2)-2;
end

function A = ptInCircle(x,y,Xc,Yc,R)
    A = (x-Xc)^2+(y-Yc)^2-R^2;
end