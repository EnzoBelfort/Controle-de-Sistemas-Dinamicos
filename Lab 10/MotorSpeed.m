J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
s = tf('s');
P_motor = K/((J*s+b)*(L*s+R)+K^2);
rP_motor = 0.1/(0.5*s+1)


linearSystemAnalyzer('step', P_motor, 0:0.1:5);