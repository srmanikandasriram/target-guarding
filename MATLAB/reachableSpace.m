function z = reachableSpace(x,y,x0,y0,t0,v,L,T)
%%
% Starting configuration of the differential drive robot is (x0,y0,t0).
% Maximum linear velocity of the robot is v and the shaft length (i.e.)
% distance between the wheels is L.
% T is the simulation time.
% x and y are symbolic variables.

p = abs(atan2(y-y0,x-x0)-t0);
q = 2*pi-abs(atan2(y-y0,x-x0)-t0);
dtheta = symfun(1/2*(p+q-abs(p-q)),[x,y]);
z = sqrt((x-x0)^2+(y-y0)^2)/v + dtheta*L/(2*v)-T;
end
