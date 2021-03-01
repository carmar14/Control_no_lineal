clc
close all
clear


b=2;
A=[0 1; 0 -b];
B=[0 1]';
C=[1 0];
pd=[-10 -20];
pda=[pd -100];
aa=[A zeros(2,1);-C 0]
ba=[B;0]
kt=place(aa,ba,pda)
kp=kt(1,1:2)
ki=kt(1,3)

eig(A-B*kp)


a=4;
A=[0 1; 0 0];
B=[0 1]';
C=[1 0];
pd=[-12+8i -12-8i];
pda=[pd -120];
aa=[A zeros(2,1);-C 0]
ba=[B;0]
kt=place(aa,ba,pda)
kpi=kt(1,1:2)
kii=kt(1,3)

eig(A-B*kpi)


%%%%%%%%%%%%%%ejemplo 2

% a=4;
% A=[-2 1; 0 0];
% B=[0 1]';
% C=[1 0];
% pd=[-50 -55];
% pda=[pd -500];
% aa=[A zeros(2,1);-C 0]
% ba=[B;0]
% kt=place(aa,ba,pda)
% kpi=kt(1,1:2)
% kii=kt(1,3)
% 
% eig(A-B*kpi)