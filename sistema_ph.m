clc
clear
close all

syms pk2 pk1 pkw y x1 x2 x3 V a1 a2 a3 w11 w12 w13 w21 w22 w23 q1 q2 Cx3 u1 u2;

f=[(q1/V)*(w11-x1)+(q2/V)*(w21-x1);
   (q1/V)*(w12-x2)+(q2/V)*(w22-x2);
   (q1/V)*(w13-x3)+(q2/V)*(w23-x3)];

g=[(a1-x1)/V;
   (a2-x2)/V;
   (a3-x3)/V];

g1=g;

g2=[(w11-x1)/V;
    (w12-x2)/V;
    (w13-x3)/V];

f1=(q2/V)*[w21-x1;
          w22-x2;
          w23-x3];

%Cx3=(2+10^(pk2-y))/(1+10^(pk2-y)+10^(pk1+pk2-2*y));

h=-x1+x2-x3*Cx3+10^(-y)-10^(y-pkw);
hy=diff(h,y);
hx=gradient(h,[x1,x2,x3]);

%dydx=-([hx(1) 0 0; 0 hx(2) 0; 0 0 hx(3)]/hy)*g
Lgy=-(hx'/hy)*g;
Lfy=-(hx'/hy)*f;

Lg1y=-(hx'/hy)*g1;
Lg2y=-(hx'/hy)*g2;
Lf1y=-(hx'/hy)*f1;





A=0;
[n n2]=size(A);
B=1;
[n m]=size(B);
C=1;
[p n]=size(C);
pd=[-4]; %cantidad de polos igual a n estados
pda=[pd -10];  % agregar p polos que no altere la dinamica
aa=[A zeros(n,p);-C zeros(p,p)];
ba=[B;zeros(p,m)];
kt=place(aa,ba,pda);
kp=kt(:,1);
ki=kt(:,1+1:end);

eig(A-B*kp);



