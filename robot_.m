clc
clear 
close all

%---------ejemplo robot
A=[0 1 0 0; 
   0 0 1 0;
   0 0 0 1;
   0 0 0 0];
[m n]=size(A);
B=[0 0 0 1]';
C=[1 0 0 0];
pd=[-14 -10 -20 -12];
pda=[pd -100];
aa=[A zeros(m,1);-C 0]
ba=[B;0]
kt=place(aa,ba,pda)
kp=kt(1,1:4)
ki=kt(1,5)

eig(A-B*kp)