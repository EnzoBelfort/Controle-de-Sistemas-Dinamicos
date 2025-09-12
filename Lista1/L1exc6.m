function L1exc6(y, z, t)
    figure();
    hold on;
    grid on;
    
    plot(t, y, 'r', 'LineWidth', 2);
    plot(t, z, 'b--', 'LineWidth', 2);
    
    % Adicionando título, rótulos e legenda
    title('Comparação entre y e z');  % Título do gráfico
    xlabel('Tempo (t)');  % Rótulo do eixo X
    ylabel('Valor');  % Rótulo do eixo Y
    
    % Adicionando a legenda
    legend('y', 'z', 'Location', 'best');  % Legenda das curvas

    hold off;