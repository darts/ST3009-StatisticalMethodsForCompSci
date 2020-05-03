A = readmatrix('dataset_answers', 'Delimiter', ' ');
Q1 = A(:, 1);
Q2 = A(:, 2);
Q3 = A(:, 3);

histogram(Q1, numel(unique(Q1)),'Normalization','probability')
title('Question 1')
xlabel('Grade')
ylabel('P(Grade)=X')

histogram(Q2, numel(unique(Q2)),'Normalization','probability')
title('Question 2')
xlabel('Grade')
ylabel('P(Grade)=X')

histogram(Q3, numel(unique(Q3)),'Normalization','probability')
title('Question 3')
xlabel('Grade')
ylabel('P(Grade)=X')
