[t,x]=ode45(@signal,[0 10], [0 0 0 0]); %[x1 x2 x'1 x'2]

figure(1)
plot(t,x(:,1));
grid on
title("Posición de X1");
xlabel("Tiempo");
ylabel("Posición");

figure(2)
plot(t,x(:,2));
grid on
title("Posición de  X2");
xlabel("Tiempo");
ylabel("Posición");
