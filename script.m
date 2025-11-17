% --- script_teste.m ---
% Script para testar a função 'myrootlocus' contra a 'rlocus' do MATLAB.

clear; clc; close all; % Limpa o ambiente

% --- SISTEMA DE TESTE 1: 2 polos reais ---
% G(s) = 1 / (s^2 + 3s + 2) = 1 / ((s+1)(s+2))
num1 = [1];
den1 = [1 3 2];
G1 = tf(num1, den1);

figure(1);
subplot(1, 2, 1); % Lado esquerdo do gráfico
myrootlocus(num1, den1);
title('MINHA FUNÇÃO: G_1(s)');
% (Opcional) Ajusta o zoom para bater com o do MATLAB
% axis([-4 1 -3 3]);


subplot(1, 2, 2); % Lado direito do gráfico
rlocus(G1);
title('MATLAB rlocus: G_1(s)');
sgtitle('Comparação Teste 1: 2 polos reais'); % Título principal da figura

% --- SISTEMA DE TESTE 2: 3 polos, 1 zero (Complexo) ---
% G(s) = (s + 3) / (s * (s+2) * (s+5)) = (s+3) / (s^3 + 7s^2 + 10s)
num2 = [1 3];
den2 = [1 7 10 0];
G2 = tf(num2, den2);

figure(2);
subplot(1, 2, 1);
myrootlocus(num2, den2);
title('MINHA FUNÇÃO: G_2(s)');

subplot(1, 2, 2);
rlocus(G2);
title('MATLAB rlocus: G_2(s)');
sgtitle('Comparação Teste 2: 3 polos, 1 zero');

% --- SISTEMA DE TESTE 3: Polos complexos conjugados ---
% G(s) = (s + 4) / (s^2 + 2s + 5)
num3 = [1 4];
den3 = [1 2 5]; % Polos em -1 +/- j2
G3 = tf(num3, den3);

figure(3);
subplot(1, 2, 1);
myrootlocus(num3, den3);
title('MINHA FUNÇÃO: G_3(s)');

subplot(1, 2, 2);
rlocus(G3);
title('MATLAB rlocus: G_3(s)');
sgtitle('Comparação Teste 3: Polos complexos');