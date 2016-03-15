P0 = 0.4;
P1 = 0.6;
C = [0, 1; 2, 0]; % Iterate manually

[gamma, Pd, Pf, Risk] = Athens_core(P0, P1, C, 0, 0)
