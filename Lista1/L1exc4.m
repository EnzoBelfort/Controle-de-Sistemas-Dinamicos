function L1exc4(ydn, yda, t)
    figure(); % Cria uma nova figura
    hold on;  % Mant�m ambas as curvas na mesma figura
    
    % Plotando as curvas com cores e estilos diferentes
    plot(t, ydn, 'r', 'LineWidth', 2); % Curva de ydn em vermelho
    plot(t, yda, 'b--', 'LineWidth', 2); % Curva de yda em azul e tracejada
    
    % Adicionando t�tulo, r�tulos e legenda
    title('Compara��o entre ydn e yda');  % T�tulo do gr�fico
    xlabel('Tempo (t)');  % R�tulo do eixo X
    ylabel('Valor');  % R�tulo do eixo Y
    
    % Adicionando a legenda
    legend('ydn', 'yda', 'Location', 'best');  % Legenda das curvas
    
    grid on;  % Ativando a grade
    hold off; % Libera o gr�fico para outras modifica��es
end
