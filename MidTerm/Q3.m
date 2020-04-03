A = readmatrix('dataset_vals', 'Delimiter', ' ');
[rows, columns] = size(A);
N = 1000;
baseProb = zeros(1,7);

for i = 1:columns
    X = 0;
    for j = 1:rows
        tmp = cast(A(j, i), 'uint8');
        X = X + (tmp > 10);
    end
    baseProb(1, i) = X/N;
end

% baseProb = [0.2540 0.3460 0.2980 0.3800 0.2250 0.2820 0.3170]

A = readmatrix('dataset_probs', 'Delimiter', ' ');

A .* baseProb

sum(A .* baseProb)
