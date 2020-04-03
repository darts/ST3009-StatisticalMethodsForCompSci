mean = 0.2540;
mu = mean

sigma = sqrt(mu*(1-mu))

N = 1000

lower_chebychev = mu - (sigma / sqrt(0.05 * N))
upper_chebychev = mu + (sigma / sqrt(0.05 * N))

lower_clt = (-1.96) * (sigma / sqrt(N)) + mu
upper_clt = (1.96) * (sigma / sqrt(N)) + mu

A = readmatrix('dataset_vals', 'Delimiter', ' ');
A = A(:,1);
datasetSize = 1000;
for i = 1:numel(A)
    A(i) = A(i) > 10;
end

ci = bootci(datasetSize, {@mean, A})

