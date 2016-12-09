Dx = 0.004; Dy = 0.001;
v = 1;                      
M = 1;     
xmin = 0.85; xmax = 1.15;  
ymin = -0.1; ymax = 0.1; 
t = 1
lam =0 %lamda

[x,y] = meshgrid (linspace(xmin,xmax,100),linspace(ymin,ymax,100));
xx = x - v*t;
c = (M/4/pi/t/sqrt(Dx*Dy))*ones(100).*exp((-0.25*(xx.*xx/Dx + y.*y/Dy)/t)-lam*t);

figure; % unfilled contour
contour(x,y,c,5, 'ShowText','on');  
xlabel ('x'); ylabel ('y'); 
%
%
figure; % filled contour
contourf(x,y,c,5,'ShowText','on');  
xlabel ('x'); ylabel ('y'); 

figure;
surfc(x,y,c); 
colorbar; xlabel ('x'); ylabel ('y'); 

 