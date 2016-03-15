p1 = [0.01, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.99];
p0 = flip(p1);
C = [0, 3; 2, 0];
precomputedGamma = 1.4873; % From exercise 6: case 4 

Risk = zeros(1,11);
for i = 1:11
    [gamma, Pd, Pf, Risk(i)] = Athens_core(p0(i), p1(i), C, 0, precomputedGamma);
end
Risk