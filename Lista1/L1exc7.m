function zdn = L1exc7(z, t)
    dz = z(2:end) - z(1:end-1);
    dz = [dz(1), dz];  % Adicionando o primeiro valor da derivada para manter o mesmo tamanho de y
    
    % Calculando a diferença de t
    dt = t(2:end) - t(1:end-1);
    dt = [dt(1), dt];  % Adicionando o primeiro valor para manter o mesmo tamanho de t
    
    % Derivada acelerada (dy/dt)
    zdn = dz ./ dt;  % Derivada com base no intervalo de t
end