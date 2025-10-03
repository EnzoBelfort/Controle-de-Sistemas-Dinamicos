m = 1;
k = 1;
b = 0.2;
F = 1;

s = tf('s');
sys = 1/(m*s^2+b*s+k);
 
% num = [1];
% den = [m b k];
% sys = tf(num,den)
