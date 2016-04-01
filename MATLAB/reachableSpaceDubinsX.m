function x = reachableSpaceDubinsX(t,x0,t0,v,R,T,primitive)
if primitive == 1
    % L(t) S(T-t)
    x = x0 + R*cos(pi/2+t0) + R*cos(-pi/2+t0+v*t/R) + v*(T-t)*cos(t0+v*t/R);
elseif primitive == 2
    % R(t) S(T-t)
    x = x0 + R*cos(-pi/2+t0) + R*cos(pi/2+t0-v*t/R) + v*(T-t)*cos(t0-v*t/R);
elseif primitive == 3
    % S(T-t) L(t)
    x = x0 + v*(T-t)*cos(t0) + R*cos(pi/2+t0) + R*cos(-pi/2+t0+v*t/R) ;
elseif primitive == 4
    % S(T-t) R(t) 
    x = x0 + v*(T-t)*cos(t0) + R*cos(-pi/2+t0) + R*cos(pi/2+t0-v*t/R);
elseif primitive == 5
    % L(t) R(T-t) 
    x = x0 + R*cos(pi/2+t0) + R*cos(-pi/2+t0+v*t/R) + R*cos(-pi/2+t0+v*t/R) + R*cos(pi/2+t0+v*t/R-v*(T-t)/R);
elseif primitive == 6
    % R(t) L(T-t) 
    x = x0 + R*cos(-pi/2+t0) + R*cos(pi/2+t0-v*t/R) + R*cos(pi/2+t0-v*t/R) + R*cos(-pi/2+t0-v*t/R+v*(T-t)/R);
end
end
