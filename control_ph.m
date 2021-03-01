clc
clear
close all

%-----------Variables para el calculo del Corchete de Lie----
syms x1 x2 x3 q1 q2 w11 w21 w12 w22 w13 w23 a1 a2 a3 V
f=[q1*(w11-x1)/V+q2*(w21-x1)/V;
   q1*(w12-x2)/V+q2*(w22-x2)/V;
   q1*(w13-x3)/V+q2*(w23-x3)/V];

g=[(a1-x1)/V;
   (a2-x2)/V;
   (a3-x3)/V];

%calculos requeridos
dfdx=diag(jacobian(f,[x1 x2 x3]));
dgdx=diag(jacobian(g,[x1 x2 x3]));

%[f,g](x)=dgdx*f(x)-dfdx*g(x)
liefg=dgdx*f-dfdx*g


