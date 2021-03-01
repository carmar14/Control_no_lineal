clc
clear
close all

%---------Ejemplo 2 mimo y1=x1 ^ y2=x2---------

%---------------y1---------------
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


%---------------y2---------------
A=0;

B=1;
C=1;
pd=[-1];
pda=[pd -50];
aa=[A zeros(1,1);-C 0]
ba=[B;0]
kt=place(aa,ba,pda)
kp2=kt(1,1)
ki2=kt(1,2)

eig(A-B*kp2)