x = matlab.graphics.axis.Axes;
y = matlab.graphics.axis.Axes;
z = matlab.graphics.axis.Axes;
x = 0:pi/10:20*pi;
y = (x.^2).*sin(x);
z = cos(x);
% plotyy(x, y, x, z)

axis equal
for j=1:200
%     x = 0:pi/10:20*pi;
%     y = (x.^2).*sin(x);
    plotyy(x,y,x, z)
    %axis([-80,80,-80,80]);
    M(:,j) = getframe;
end
movie(M)

