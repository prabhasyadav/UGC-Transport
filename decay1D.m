t = 1;
L = 3;
D=0.1 ;
N = 25;
x = linspace(0,L, N);
v=1;


mrk={'-o','-s','-*','-v','-+','-<'}
figure (1);
for lam = 1:1:6
c0 = 1;
u = sqrt(v^2+4*lam*D);
h = 1/(2.*sqrt(D*t));
c  = c0/2*(exp((x./2*D).*(v-u)).*erfc(h.*(x-u*t))+ exp((x./2*D).*(v+u)).*erfc(h.*(x+u*t)));
set(gca,'LineStyle',mrk(lam)) 
plot(x, c/c0, 'color',rand(1,3), 'LineWidth', 1)

hold on

end 

c0 = 1;
lam =0
u = sqrt(v^2+4*lam*D);
h = 1/(2.*sqrt(D*t));
c  = c0/2*(exp((x./2*D).*(v-u)).*erfc(h.*(x-u*t))+ exp((x./2*D).*(v+u)).*erfc(h.*(x+u*t)));
plot(x, c/c0, '-r', 'LineWidth', 1)


hold off

set(gca, "linewidth", 1, "fontsize", 12)
xlabel("Distance, x, [L]")
ylabel("Normalized concentration, C/Co, [ ]")
legend('\lambda = 1','\lambda = 2', '\lambda = 3', '\lambda = 4', '\lambda = 5', '\lambda = 6','\lambda = 0', "location", "northeast")
#saveas(1, "decay1D.png")
text(0.5, 0.2, "t = 1h", "fontsize",12)