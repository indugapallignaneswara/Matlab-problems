[x,y] = peaks(30);
z = exp(-0.9*(x.^2+0.5*(x-y).^2));
%surf(x,y,z);
contour3(x,y,z);
xlabel('\bf X axis');
ylabel('\bf Y axis');
zlabel('\bf Z axis');
title('\bf Surface Plot')
colorbar
