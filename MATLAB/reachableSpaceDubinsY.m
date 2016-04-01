function y = reachableSpaceDubinsY(t,y0,t0,v,R,T,primitive)
if primitive == 1
    % L(t) S(T-t)
    y = y0 + R*sin(pi/2+t0) + R*sin(-pi/2+t0+v*t/R) + v*(T-t)*sin(t0+v*t/R);
elseif primitive == 2
    % R(t) S(T-t)
    y = y0 + R*sin(-pi/2+t0) + R*sin(pi/2+t0-v*t/R) + v*(T-t)*sin(t0-v*t/R);
elseif primitive == 3
    % S(T-t) L(t)
    y = y0 + v*(T-t)*sin(t0) + R*sin(pi/2+t0) + R*sin(-pi/2+t0+v*t/R) ;
elseif primitive == 4
    % S(T-t) R(t) 
    y = y0 + v*(T-t)*sin(t0) + R*sin(-pi/2+t0) + R*sin(pi/2+t0-v*t/R);
elseif primitive == 5
    % L(t) R(T-t) 
    y = y0 + R*sin(pi/2+t0) + R*sin(-pi/2+t0+v*t/R) + R*sin(-pi/2+t0+v*t/R) + R*sin(pi/2+t0+v*t/R-v*(T-t)/R);
elseif primitive == 6
    % R(t) L(T-t) 
    y = y0 + R*sin(-pi/2+t0) + R*sin(pi/2+t0-v*t/R) + R*sin(pi/2+t0-v*t/R) + R*sin(-pi/2+t0-v*t/R+v*(T-t)/R);
end
end
