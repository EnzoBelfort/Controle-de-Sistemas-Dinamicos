function L1exc4(ydn, yda, t)
    figure(); % Cria uma nova figura
    hold on;  % Mantém ambas as curvas na mesma figura
    
    % Plotando as curvas com cores e estilos diferentes
    plot(t, ydn, 'r', 'LineWidth', 2); % Curva de ydn em vermelho
    plot(t, yda, 'b--', 'LineWidth', 2); % Curva de yda em azul e tracejada
    
    % Adicionando título, rótulos e legenda
    title('Comparação entre ydn e yda');  % Título do gráfico
    xlabel('Tempo (t)');  % Rótulo do eixo X
    ylabel('Valor');  % Rótulo do eixo Y
    
    % Adicionando a legenda
    legend('ydn', 'yda', 'Location', 'best');  % Legenda das curvas
    
    grid on;  % Ativando a grade
    hold off; % Libera o gráfico para outras modificações
end
