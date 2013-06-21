function y = sawtooth(t)
    T = 2*pi;
    L = T / 2;
    y = 1/(2*L) * mod(t, 2*L);
end