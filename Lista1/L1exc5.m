function z = L1exc5(t)
    r = 0 + 0.2.*randn(size(t));
    z = t.^2 + r;