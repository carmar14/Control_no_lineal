clc
clear
close all

%--------parametros del sistema------
k=0.3;
c=4;
m=0.001;
A=0.3;

%-------modelo del sistema--------
h=tf(A/k,[m/k c/k 1]);
[x t]=step(h);
plot(t,x,'k')
xlabel('tiempo(seg)');
ylabel('Posición de apertura de valvula (m)')
%-----https://controlautomaticoeducacion.com/instrumentacion/valvula-de-control/

%-------flujo a traves de la valvula---

%Constante
a1=10;
a2=50;
% 1. Valvula Lineal
f1=x;
% 2. Válvula Raiz Cuadrada
f2=sqrt(x);
% 3. Valvula de porcentaje parejo
f3=a1.^(x-1); %Cte 1
f4=a2.^(x-1); %Cte 1
% 4. Valvula Hyperbolica
f5=1./(a1-(a1-1).*x);
f6=1./(a2-(a2-1).*x);
%Grafica:
figure
plot(x,f1,x,f2,x,f3,x,f4,x,f5,x,f6,'Linewidth',2.5)
legend('Lineal','Raiz Cuadrada','Igual Porcentaje \alpha=10'...
    ,'Igual Porcentaje \alpha=50','Hyperbolica \alpha=10','Hyperbolica \alpha=50')