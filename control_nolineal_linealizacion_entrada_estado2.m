clc
clear
close all

a=4;
A=[-2 1; 0 0];
B=[0 1]';
C=[1 0];
pd=[-40 -45];
pda=[pd -500];
aa=[A zeros(2,1);-C 0]
ba=[B;0]
kt=place(aa,ba,pda)
kpi=kt(1,1:2)
kii=kt(1,3)

eig(A-B*kpi)