% Lab 04 - Caixa cinza e Caixa preta

function Lab04
    dExp = linspace(0,350,11) ;
    pExp = [0.75 0.95 1 1 0.8 0.4 0.3 0.3 0.05 0.15 0.1];
    
%     figure();
%     hold on;
%     grid on;
%     
%     bar(dExp, pExp);
%     title('Prob de Detec?ao de tartarugas em fun?ao da distancia');
%     xlabel('Distanica (d)');
%     ylabel('Prob (p)');
    
    
%     P = polyfit(dExp, pExp, 3);
    d = 0:1000;
    
%     Y = polyval(P,d);
         
%     figure();
%     hold on;
%     grid on;
  
%   plot(d,Y);
   
    d = 0:1000;

% Loop para ajustar o polin?mio de ordem 1 a 6
% figure; 
% for i = 1:6
%     % Ajuste do polin?mio de ordem i
%     M = polyfit(dExp, pExp, i);        
%     
%     % Calcula os valores de P para o vetor de dist?ncias d usando o polin?mio ajustado
%     Y = polyval(M, d);
%     
%     % Cria o subplot
%     subplot(3, 2, i);
%     hold on;
%     
%     scatter(dExp, pExp, 'r', 'filled');  % Gr?fico de pontos para dados experimentais
%     plot(d, Y, 'b-', 'LineWidth', 2);     % Gr?fico do polin?mio ajustado
%     
%     title(['Ordem do polin?mio: ', num2str(i)]);
%     xlabel('Dist?ncia (d)');
%     ylabel('Probabilidade (p)');
%     legend('Dados experimentais', 'Polin?mio ajustado');
%     hold off;
% end


    
    a_array = [50 100 200];
    d = 0:300;
    
    for j = 1:3
       figure();
       hold on;
       P = calc_prob_teor(a_array(j),d);
       J = local_cost(dExp, pExp, a_array(j));
       
       title(['Prob Teorica usando a = ',num2str(a_array(j)), 'com erro J = ',num2str(J)]);
       xlabel('Distanica (d)');
       ylabel('Prob (pTeor)');
       scatter(dExp, pExp, 'r', 'filled');
       plot(d,P);
    end
    
    a_array = 0:500;
    custo = 0:500;
    
    
    for k = 1:501
        custo(k) = local_cost(dExp, pExp, a_array(k));
    end
    
    figure;
    title('Custo (RMSE) em funcao de a');
    xlabel('Valores para a constante a');
    ylabel('Custo (RMSE)');
    plot(a_array, custo, 'r');
    
    
    % Figura com os resultados finais
    figure('Color', 'w');  % Fundo branco para a figura

    % T?tulo geral (usando 'text' se n?o for poss?vel usar 'sgtitle')
    annotation('textbox', [0.5, 0.96, 0, 0], 'String', 'Resultados Finais', 'FontSize', 16, 'FontWeight', 'bold', 'HorizontalAlignment', 'center', 'EdgeColor', 'none');

    % Subplot 1: Dados experimentais
    subplot(2, 2, 1);
    bar(dExp, pExp, 'FaceColor', [0, 0.5, 1], 'EdgeColor', 'k', 'LineWidth', 1.5);  % Cor azul com bordas pretas
    xlabel('Distancia (d)', 'FontSize', 12, 'FontWeight', 'bold');
    ylabel('Probabilidade (p)', 'FontSize', 12, 'FontWeight', 'bold');
    title('Dados Experimentais', 'FontSize', 14, 'FontWeight', 'bold');
    grid on;  % Adiciona grid para melhor visualiza??o

    % Subplot 2: Ajuste polinomial de grau 6
    subplot(2, 2, 2);
    M = polyfit(dExp, pExp, 6);
    Y = polyval(M, d);
    plot(d, Y, 'b-', 'LineWidth', 2);  % Linha azul com espessura maior
    xlabel('Distancia (d)', 'FontSize', 12, 'FontWeight', 'bold');
    ylabel('Probabilidade (p)', 'FontSize', 12, 'FontWeight', 'bold');
    title('Ajuste Polinomial', 'FontSize', 14, 'FontWeight', 'bold');
    grid on;  % Adiciona grid para melhor visualiza??o

    % Subplot 3: Probabilidade te?rica
    subplot(2, 2, 3);
    P = calc_prob_teor(150, d);  % Ajuste conforme sua fun??o
    plot(d, P, 'r-', 'LineWidth', 2);  % Linha vermelha para contraste
    xlabel('Distancia (d)', 'FontSize', 12, 'FontWeight', 'bold');
    ylabel('Probabilidade (p)', 'FontSize', 12, 'FontWeight', 'bold');
    title('Probabilidade Teorica', 'FontSize', 14, 'FontWeight', 'bold');
    grid on;  % Adiciona grid para melhor visualiza??o

end


function P = calc_prob_teor(a,d)
    P = 1 - exp(-(a./d).^3);
end



function J = local_cost(dExp, pExp, a)
    pTeor = calc_prob_teor(a, dExp);
    J_dif = pExp - pTeor;
    J_exp = J_dif .^ 2;
    J_mean = sum(J_exp) ./ 1000;
    
    J = sqrt(J_mean);
end