% Subamortecido
k_dc = 1;
w_n = 10;
zeta = 0.2;

s = tf('s');
G1 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);

pzmap(G1)
axis([-3 1 -15 15])

step(G1)
axis([0 3 0 2])

% Superamortecido
zeta = 1.2;

G2 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);

pzmap(G2)
axis([-20 1 -1 1])

step(G2)
axis([0 1.5 0 1.5])


% Criticamente amortecido
zeta = 1;

G3 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2);

pzmap(G3)
axis([-11 1 -1 1])

step(G3)
axis([0 1.5 0 1.5])

bode(G1,G2,G3)
legend('underdamped: zeta < 1','overdamped: zeta > 1','critically-damped: zeta = 1')