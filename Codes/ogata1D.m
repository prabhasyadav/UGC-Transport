%t = 5 ;
L = 3;
D=0.1 ;
N = 25;
x = linspace(0,L, N);
c0 = 0;
v=1;

for t = 1:2:5;

cin = 1;
h = 1/(2.*sqrt(D*t));
c = c0 + ((cin-c0)/2)*(erfc(h.*(x-v*t))) + exp(v/D.*x).*erfc(h.*(x+v*t));

plot(x, c/cin, '^-b','LineWidth', 1)
hold on

cin = 3;
h = 1/(2.*sqrt(D*t));
c = c0 + ((cin-c0)/2)*(erfc(h.*(x-v*t))) + exp(v/D.*x).*erfc(h.*(x+v*t));
%
plot(x, c/cin, '+-k','LineWidth', 1)

hold on
cin = 5;
h = 1/(2.*sqrt(D*t));
c = c0 + ((cin-c0)/2)*(erfc(h.*(x-v*t))) + exp(v/D.*x).*erfc(h.*(x+v*t));

plot(x, c/cin, '*-r','LineWidth', 1)
end 

hold off 
ylim([0 1.1])
xlim([0 3.1])
legend("cin =1 mg/L",  "cin =3 mg/L","cin =5 mg/L", "location", "southwest")
xlabel("Distance, x,  [L]", "fontsize", 12)
ylabel("Normalized Concentration, C/Cin [ ]", "fontsize", 12)
set(gca, "linewidth", 1, "fontsize", 12)
grid