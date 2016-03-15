function [gamma, Pd, Pf, Risk] = Athens_exercise2_3(d, P0, P1, C)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    eta = (P0 * (C(2,1) - C(1,1))) / (P1 * (C(1,2) - C(2,2)));
    gamma = log(eta) / d + d / 2;
    Pd = .5 * erfc( (gamma - d) / sqrt(2) );
    Pf = .5 * erfc( gamma / sqrt(2) );
    Risk = P0 * C(1,1) * (1-Pf)   +   P0 * C(2,1) * Pf   +   P1 * C(1,2) * (1-Pd)   +   P1 * C(2,2) * Pd;

end

