function L1exc6(y, z, t)
    figure();
    hold on;
    grid on;
    
    plot(t, y, 'r', 'LineWidth', 2);
    plot(t, z, 'b--', 'LineWidth', 2);
    
    % Adicionando t�tulo, r�tulos e legenda
    title('Compara��o entre y e z');  % T�tulo do gr�fico
    xlabel('Tempo (t)');  % R�tulo do eixo X
    ylabel('Valor');  % R�tulo do eixo Y
    
    % Adicionando a legenda
    legend('y', 'z', 'Location', 'best');  % Legenda das curvas

    hold off;