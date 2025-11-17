function myrootlocus(num, den)
    k = 0:0.5:50;

    n_num = length(num);
    n_den = length(den);

    if (n_num < n_den)
        dif = n_den - n_num;
        num_p = [zeros(1, dif), num]; 
        den_p = den;
    elseif (n_den < n_num)
        dif = n_num - n_den;
        den_p = [zeros(1, dif), den];
        num_p = num;
    else
        num_p = num;
        den_p = den;
    end

    
    num_ramos = length(den_p) - 1; 
    
    polos = zeros(num_ramos, length(k));

    for i = 1:length(k)
        den_mf = den_p + k(i) .* num_p;
        
        polos_coluna = roots(den_mf);
        
        polos(:, i) = sort(polos_coluna); 
    end

    figure;
    hold on;
    grid on;

    polos_ma = roots(den_p);
    zeros_ma = roots(num_p);
    
    plot(real(polos_ma), imag(polos_ma), 'kx', 'MarkerSize', 12, 'LineWidth', 2.5);
    plot(real(zeros_ma), imag(zeros_ma), 'ko', 'MarkerSize', 12, 'LineWidth', 2.5);

    
    colors = ['b', 'r', 'g', 'c', 'm'];
    
    for i = 1:num_ramos
        ramo = polos(i, :); 
        
        cor_idx = mod(i-1, length(colors)) + 1;
        cor_plot = [colors(cor_idx), '.-']; 
        
        plot(real(ramo), imag(ramo), cor_plot, 'LineWidth', 1.5, 'MarkerSize', 8);
    end
    
    title('Lugar das Raízes (Root Locus)');
    xlabel('Eixo Real (\sigma)');
    ylabel('Eixo Imaginário (j\omega)');
    

    axis equal; 
    
    ax = gca; 
    line(ax.XLim, [0 0], 'Color', 'k', 'LineStyle', '--', 'HandleVisibility', 'off');
    line([0 0], ax.YLim, 'Color', 'k', 'LineStyle', '--', 'HandleVisibility', 'off');
    
    legend('Pólos Malha Aberta', 'Zeros Malha Aberta', 'Ramos', 'Location', 'best');
    hold off;
end