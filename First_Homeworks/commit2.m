x = 0;
y = (x.^2).*sin(x);
z = cos(x);
[AX,h1ine1,hline2] = plotyy(x,y,x,z);
grid on;

for t = 1: 200
    x = [x (pi/10)*t];
    y = [y ((pi/10)*t.^2).*sin((pi/10)*t)];
    z = [z  cos((pi/10)*t)]; 
    [AX,h1ine1,hline2] = plotyy(x,y,x,z);
    grid on;
    set(h1ine1,'LineWidth',2 ,'color','b');
    set(hline2,'LineWidth',2 ,'color','r');  
    drawnow
    pause(0.01);
end


