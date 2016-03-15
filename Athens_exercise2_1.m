function [lambda, d, snr] = Athens_exercise2_1(Pf, Pd, N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

lambda = sqrt(2) * erfcinv(2 * Pf);
d = lambda - sqrt(2) * erfcinv(2 * Pd);
snr = 20 * log10(d/sqrt(N));
end

