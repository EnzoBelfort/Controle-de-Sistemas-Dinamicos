function [y, yda, yia] = L1exc2(t)
    y = t.^2;
    yda = 2*t;
    yia = (t.^3)./3;