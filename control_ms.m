clc
clear
close all

%parametros del sistema 
global Sf Y umax K1 K2
Sf=20;
Y=0.5;
umax=1;
K1=0.03;
K2=0.5;

x0=[0.01 0 0.01];

% t=0:1e-3:8000;

[t,y]=ode45(@sistema,[0 10],x0);

[m1 n]=size(y);
figure
for i=1:n
    subplot(n,1,i)
    
    plot(t,y(:,i))
end

function [dxdt]=sistema(t,X)
    global Sf Y umax K1 K2
    
    x1=X(1);
    x2=X(2);
    x3=X(3);
    F=umax/(1+2*sqrt(K1*K2));
    u2=sqrt(K1/K2);
    uX2=umax*x2/(K1+x2+K2*x2^2);
    x1p=x1*uX2-x1*F;
    x2p=(-x1/Y)*uX2+F*(u2-x2);
    x3p=x3*F;
    
    dxdt=[x1p;x2p;x3p];
    
end