A = readmatrix('dataset_vals', 'Delimiter', ' ');
[rows, columns] = size(A);
N = 1000;


for i = 1:columns
    X = 0;
    for j = 1:rows
        tmp = cast(A(j, i), 'uint8');
        X = X + (tmp > 10);
    end
    disp(i)
    disp(X/N)
end