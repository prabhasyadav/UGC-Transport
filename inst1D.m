clf
Dx = 0.000625;
v = 0.1;
M = 1;
xmin= -0.05 ; xmax = 2.15;


for t = 1:4:20; 

x = linspace (xmin,xmax,100);
xx = x - v*t;
c = (M/sqrt(4*pi*Dx*t)).*exp(-(xx.*xx)/(4*Dx*t));

plot(c', 'color', rand(1,3), 'LineWidth', 2) 
grid on
hold on;
end

hold off
ylabel('Concentration, C, (mg/L)','FontSize', 12)
xlabel('Distance, x, (m)','FontSize', 12)
legend("t= 1d","t= 5d","t= 9d","t= 13d","t= 17d")
 legend boxoff
set(gca, 'FontSize',12,'LineStyle')

