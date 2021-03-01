clc
clear 
close all

%---------ejemplo motor

A=[0 0 0; 0 0 1; 0 0 0];
[n n2]=size(A);
B=[1 0; 0 0; 0 1];
[n m]=size(B);
C=[1 0 0; 0 1 0];
[p n]=size(C);
pd=[-10 -10 -8]; %cantidad de polos igual a n estados
pda=[pd -100 -100];  % agregar p polos que no altere la dinamica
aa=[A zeros(n,p);-C zeros(p,p)];
ba=[B;zeros(p,m)]
kt=place(aa,ba,pda)
kp=kt(:,1:3)
ki=kt(:,3+1:end)

eig(A-B*kp)








% A=[0 1; 0 0];
% [m n]=size(A);
% B=[0 1]';
% C=[1 0];
% pd=[-5 -1];
% pda=[pd -50];
% aa=[A zeros(2,1);-C 0]
% ba=[B;0]
% kt=place(aa,ba,pda)
% kp=kt(1,1:2)
% ki=kt(1,3)
% 
% eig(A-B*kp)