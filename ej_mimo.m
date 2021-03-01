clc
clear
close all

A=[0 0; 0 0];
[n n2]=size(A);
B=[1 0; 0 1];
[n m]=size(B);
C=[1 0; 0 1];
[p n]=size(C);
pd=[-10 -10]; %cantidad de polos igual a n estados
pda=[pd -100 -100];  % agregar p polos que no altere la dinamica
aa=[A zeros(n,p);-C zeros(p,p)];
ba=[B;zeros(p,m)]
kt=place(aa,ba,pda)
kp=kt(:,1:2)
ki=kt(:,2+1:end)

eig(A-B*kp)
