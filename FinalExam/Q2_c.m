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

errlow = 
errhigh = 


bar(idx,(resArr ./ cQ)')
legend('Question 2','Question 3')
xlabel('Score in Q1')
ylabel('Score in Q2/Q3')
title('Mean Conditioned Mark w/ Confidence Intervals')

hold on

er = errorbar(idx,(resArr ./ cQ)',errlow,errhigh);    
er.Color = [0 0 0];                            
er.LineStyle = 'none';  

hold off