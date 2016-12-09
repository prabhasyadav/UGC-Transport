clf()
L = 3;
D=0.1 ;
N = 50;
x = linspace(0,L, N);
c0 = 0;
v=1;
cin = 1
lam= 1
cmap = hsv(12)
mrk={'-s','-*','-v','-<'}

t= 1
for R = 1:2:8
u = sqrt(v^2+4*lam*R*D);
h1 = (R.*x-v*t)/(2*sqrt(D*R*t));
h2 = (R.*x+v*t)/(2*sqrt(D*R*t));
h3 = (R.*x-u*t)/(2*sqrt(D*R*t));
h4 = (R.*x+u*t)/(2*sqrt(D*R*t));
h5 = (((v-u)/2*D).*x);
h6 = (((v+u)/2*D).*x);

c = c0*exp(-lam*t)*(1-1/2*erfc(h1)-1/2*exp(v.*x/D).*erfc(h2))+cin/2*(exp(h5).*erfc(h3)+exp(h6).*erfc(h4));

subplot(1,2,1)
plot(x,c/cin,'Color',cmap(R,:), 'LineWidth', 2)
hold on
xlabel("Distance, x, [L]", 'FontSize', 12)
ylabel("Normalized Concentration, C/Cin [ ]", "FontSize", 12)
legend("R=1","R=3", "R=5", "R=7")
text(2,0.7, "t = 1 h")
text(1.5,0.65, '\lambda = 0 1/h')
grid on
end 

t= 3
for R = 1:2:8
u = sqrt(v^2+4*lam*R*D);
h1 = (R.*x-v*t)/(2*sqrt(D*R*t));
h2 = (R.*x+v*t)/(2*sqrt(D*R*t));
h3 = (R.*x-u*t)/(2*sqrt(D*R*t));
h4 = (R.*x+u*t)/(2*sqrt(D*R*t));
h5 = (((v-u)/2*D).*x);
h6 = (((v+u)/2*D).*x);

c = c0*exp(-lam*t)*(1-1/2*erfc(h1)-1/2*exp(v.*x/D).*erfc(h2))+cin/2*(exp(h5).*erfc(h3)+exp(h6).*erfc(h4));
%u = sqrt(v*v+4*lambda*R*D);

%c = c0*exp(-lambda*t(i))*(e-0.5*erfc(h*(R*x-e*v*t(i)))-...
   %     0.5*exp((v/D)*x).*erfc(h*(R*x+e*v*t(i))))+...
    %    (cin-c0)*0.5*(exp((v-u)/(D+D)*x).*erfc(h*(R*x-e*u*t(i)))+...
     %   exp((v+u)/(D+D)*x).*erfc(h*(R*x+e*u*t(i))))
subplot(1,2,2)
plot(x,c/cin,'Color',cmap(R,:),'LineWidth',2)
hold on
xlabel("Distance, x, [L]", 'FontSize', 12)
ylabel("Normalized Concentration, C/Cin [ ]", "FontSize", 12)
text(1.5,0.8, "t = 3 h")
text(1.5,0.75, '\lambda = 0 1/h')
grid on
end

hold off