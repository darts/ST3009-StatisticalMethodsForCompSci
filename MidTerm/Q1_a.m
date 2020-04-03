A = readmatrix('dataset_vals', 'Delimiter', ' ');

for i = 1:numel(A)
    A(i) = A(i) > 10;
end
histogram(A(:,1),'Normalization','probability');