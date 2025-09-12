function L1exc8(ydn, zdn, t)
    figure();
    hold on;
    grid on;
    
    plot(t, ydn, 'r', 'LineWidth', 2);
    plot(t, zdn, 'b--', 'LineWidth', 2);
    
    % Adicionando t�tulo, r�tulos e legenda
    title('Compara��o entre ydn e zdn');  % T�tulo do gr�fico
    xlabel('Tempo (t)');  % R�tulo do eixo X
    ylabel('Valor');  % R�tulo do eixo Y
    
    % Adicionando a legenda
    legend('ydn', 'zdn', 'Location', 'best');  % Legenda das curvas

    hold off;
end