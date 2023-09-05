function dx=signall(t,x)
%----Parametros----%
a1=290; 
b1=1000;  
a2=59;
c1=16182; 
f=0; 
c2=19000; 
r1=0.05*sin(0.5*pi*t);
r2= 0.05*sin(20*pi*t);
r=r1;
%----Matriz de variables de estado----%
dx=zeros(4,1);
%----Representación de estados----%
dx(1)=x(3);
dx(2)=x(4);
dx(3)=(1/a1)*(-(b1*x(3))+(b1*x(4))-(c1*x(1))+(c1*x(2))+f);
dx(4)=(1/a2)*((b1*x(3))-(b1*x(4))+(c1*x(1))-((c1+c2)*x(2))+(c2*r)+f);