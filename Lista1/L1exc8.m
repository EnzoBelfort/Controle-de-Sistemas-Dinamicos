function L1exc8(ydn, zdn, t)
    figure();
    hold on;
    grid on;
    
    plot(t, ydn, 'r', 'LineWidth', 2);
    plot(t, zdn, 'b--', 'LineWidth', 2);
    
    % Adicionando título, rótulos e legenda
    title('Comparação entre ydn e zdn');  % Título do gráfico
    xlabel('Tempo (t)');  % Rótulo do eixo X
    ylabel('Valor');  % Rótulo do eixo Y
    
    % Adicionando a legenda
    legend('ydn', 'zdn', 'Location', 'best');  % Legenda das curvas

    hold off;
end