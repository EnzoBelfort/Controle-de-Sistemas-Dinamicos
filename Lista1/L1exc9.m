function [yin, zin] = L1exc9(y, z, yia, t)
    T = 0.01;
    
    yin = T.*cumsum(y);
    zin = T.*cumsum(z);
    
    figure();
    hold on;
    grid on;
    
    plot(t, yin, 'r', 'LineWidth', 2);
    plot(t, zin, 'b--', 'LineWidth', 2);
    plot(t, yia, 'g', 'LineWidth', 2);

    
    % Adicionando t�tulo, r�tulos e legenda
    title('Compara��o entre yin e zin e yia');  % T�tulo do gr�fico
    xlabel('Tempo (t)');  % R�tulo do eixo X
    ylabel('Valor');  % R�tulo do eixo Y
    
    % Adicionando a legenda
    legend('yin', 'zin', 'yia', 'Location', 'best');  % Legenda das curvas

    hold off;
end