A = readmatrix('dataset_vals', 'Delimiter', ' ');
A = A(:,1);
[total, x] = size(A);
lag = 0;

for i = 1:numel(A)
    x = cast(A(i), 'uint8');
    lag = lag + (x > 10);
end

mean = lag / total
