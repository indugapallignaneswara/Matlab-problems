xd=linspace(-1,1,100);
yd=linspace(0,2*pi,100);
[x,y]=meshgrid(xd,yd)
z=x.*cos(y);
mesh(x,y,z)
