A = readmatrix('dataset_answers', 'Delimiter', ' ');
A = sortrows(A, 1);
resArr = zeros(2,21);
szA = size(A);
cQ = zeros(2,21);
varQ= zeros(2,21);
idx = 0:5:100;

pre2 = 0;
pre3 = 0;
preIdx2 = 1;
preIdx3 = 1;
for i = 1:szA(1)
    if A(i, 1) ~= pre2
       varQ(1, floor(A(i,1)/5)) = var(A(preIdx2:i-1,2));
       preIdx2 = i;
       pre2 = A(i, 1);
    end
    if A(i, 1) ~= pre3
       varQ(2, floor(A(i,1)/5)) = var(A(preIdx3:i-1,3));
       preIdx3 = i;
       pre3 = A(i, 1);
    end
end
varQ(1, 21) = var(A(preIdx2:szA(1),2));
varQ(2, 21) = var(A(preIdx3:szA(1),3));

for i = 1:szA(1)
    resArr(1,floor(A(i,1)/5)+1) = resArr(1,floor(A(i,1)/5)+1) + A(i,2);
    resArr(2,floor(A(i,1)/5)+1) = resArr(2,floor(A(i,1)/5)+1) + A(i,3);
    cQ(1, floor(A(i,1)/5)+1) = cQ(1, floor(A(i,1)/5)+1) + 1;
    cQ(2, floor(A(i,1)/5)+1) = cQ(2, floor(A(i,1)/5)+1) + 1;
end

err = zeros(2,21);

szRes = size(resArr);
for i = 1:szRes(2)
    err(1,i) = (1.96) * (sqrt(varQ(1,i))/ sqrt(cQ(1,i)));
    err(2,i) = (1.96) * (sqrt(varQ(2,i))/ sqrt(cQ(2,i)));
end
model_series = (resArr ./ cQ)';
model_error = err';
bar(idx,model_series, 'grouped');
hold on %manually calculate error bar positions
ngroups = size(model_series, 1);
nbars = size(model_series, 2);
groupwidth = min(0.8, nbars/(nbars + 1.5));
for i = 1:nbars
    x = (((1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars))*5)-5;
    errorbar(x, model_series(:,i), model_error(:,i), 'k', 'linestyle', 'none');
end

legend('Question 2','Question 3')
xlabel('Score in Q1')
ylabel('Score in Q2/Q3')
title('Mean Conditioned Mark w/ 95% Confidence Intervals')