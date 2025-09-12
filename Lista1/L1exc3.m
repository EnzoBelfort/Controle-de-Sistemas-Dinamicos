function ydn = L1exc3(t)
    % Calculando y como o quadrado de t
    y = t.^2;
      
    % Calculando a derivada de y (aproximação)
    dy = y(2:end) - y(1:end-1);
    dy = [dy(1), dy];  % Adicionando o primeiro valor da derivada para manter o mesmo tamanho de y
    
    % Calculando a diferença de t
    dt = t(2:end) - t(1:end-1);
    dt = [dt(1), dt];  % Adicionando o primeiro valor para manter o mesmo tamanho de t
    
    % Derivada acelerada (dy/dt)
    ydn = dy ./ dt;  % Derivada com base no intervalo de t
end
