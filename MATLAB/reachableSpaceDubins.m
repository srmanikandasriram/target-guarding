function reachableSpaceDubins(x0,y0,t0,v,R,T)
%%
% Starting configuration of the differential drive robot is (x0,y0,t0).
% Maximum linear velocity of the robot is v and the minimum turning radius
% of the robot is R.
% T is the simulation time.
% By default only L(t)S(T-t) and R(t)S(T-t) primitives are used.
if ~exist('all_primitives','var')
    all_primitives = false;
end
H = ezplot(@(t)reachableSpaceDubinsX(t,x0,t0,v,R,T,1), @(t)reachableSpaceDubinsY(t,y0,t0,v,R,T,1),[0,min(T,2*pi*R/v)]);
set(H,'Color','red');
hold on;
H = ezplot(@(t)reachableSpaceDubinsX(t,x0,t0,v,R,T,2), @(t)reachableSpaceDubinsY(t,y0,t0,v,R,T,2),[0,min(T,2*pi*R/v)]);
set(H,'Color','green');
if all_primitives
    H = ezplot(@(t)reachableSpaceDubinsX(t,x0,t0,v,R,T,3), @(t)reachableSpaceDubinsY(t,y0,t0,v,R,T,3),[0,min(T,2*pi*R/v)]);
    set(H,'Color','blue');
    H = ezplot(@(t)reachableSpaceDubinsX(t,x0,t0,v,R,T,4), @(t)reachableSpaceDubinsY(t,y0,t0,v,R,T,4),[0,min(T,2*pi*R/v)]);
    set(H,'Color','yellow');
    H = ezplot(@(t)reachableSpaceDubinsX(t,x0,t0,v,R,T,5), @(t)reachableSpaceDubinsY(t,y0,t0,v,R,T,5),[0,min(T,2*pi*R/v)]);
    set(H,'Color','cyan');
    H = ezplot(@(t)reachableSpaceDubinsX(t,x0,t0,v,R,T,6), @(t)reachableSpaceDubinsY(t,y0,t0,v,R,T,6),[0,min(T,2*pi*R/v)]);
    set(H,'Color','magenta');
end
viscircles([x0+R*cos(pi/2+t0),y0+R*sin(pi/2+t0)],R,'Color','k','LineStyle','--');
viscircles([x0+R*cos(-pi/2+t0),y0+R*sin(-pi/2+t0)],R,'Color','k','LineStyle','--');
end
