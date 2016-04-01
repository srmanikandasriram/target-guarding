function equiDistantLocus(x,y,xp,yp,tp,vp,Lp,xe,ye,te,ve,Le,T)
%%
% computes locus of points that are equi-distant from P & E
% using reachableSpace function.
% Additionally plots arrows for denoting starting pose of P & E.

z1 = reachableSpace(x,y,xp,yp,tp,vp,Lp,T);
z2 = reachableSpace(x,y,xe,ye,te,ve,Le,T);
z = z1-z2;
ezplot(z,[-10,10,-10,10]);
axis square;
hold on;
drawArrow = @(x,y) quiver( x(1),y(1),x(2)-x(1),y(2)-y(1),0 );
a = 1.0; % arrow shaft length
Xa = [xp xp+a*cos(tp)];
Ya = [yp yp+a*sin(tp)];
drawArrow(Xa,Ya);
Xa = [xe xe+a*cos(te)];
Ya = [ye ye+a*sin(te)];
drawArrow(Xa,Ya);
end
