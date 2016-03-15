C = [0, 3; 2, 0];
gammaOffset = 0;
p1 = 0.46; % See exercise 9
p0 = 1 - p1;
[precomputedGamma, ~, ~, ~] = Athens_core(p0, p1, C, gammaOffset, 0);

% Case 1
p1 = 0.2;
p0 = 0.8;

[gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset, precomputedGamma);
disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));

% Case 4
p1 = 0.6;
p0 = 0.4;

[gamma, Pd, Pf, Risk] = Athens_core(p0, p1, C, gammaOffset, precomputedGamma);
disp(sprintf(repmat('%1.4f\t', 1, 4), gamma, Pd, Pf, Risk));
