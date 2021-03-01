clc
clear
close all

%---------Ejemplo 2/3---------
A=[0 1; 0 0];
[m n]=size(A);
B=[0 1]';
C=[1 0];
pd=[-5 -10];
pda=[pd -100];
aa=[A zeros(2,1);-C 0]
ba=[B;0]
kt=place(aa,ba,pda)
kp=kt(1,1:2)
ki=kt(1,3)

eig(A-B*kp)