p0 = 0.8;
p1 = 0.2;
C = [0, 1; 2, 0]; % Iterate manually
gammaOffset = 2; % Iterate manually

[gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset)