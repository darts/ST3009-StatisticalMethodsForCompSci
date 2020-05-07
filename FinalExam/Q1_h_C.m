rng(221);
low = 0.3;
high = 0.3;
steps = 0.05;
runs = 1000;
resMat = zeros(10, 3);
legArr = [{'random'}, {'in-last'}, {'not-in-last'}];


for i = 0:10
    step = 1;
   while step < ((high-low)/steps)+2
       pred = low + ((step-1)*steps);
       xSum = 0;
       for j = 1:runs
           xSum = xSum + stoSim3(i, pred);
       end
       resMat(i+1, 1) = xSum(1)/runs;
       resMat(i+1, 2) = xSum(2)/runs;
       resMat(i+1, 3) = xSum(3)/runs;
       step = step + 1; 
   end
end
idx = [0:10];
% bar(idx,resMat)
line(idx, resMat)
legend(legArr)
xlabel("Questions Studied")
ylabel("P(Pass)")
title("Probability of passing random exam when applying different strategies")



function X = stoSim3 (n, predictability)
    oldpaper = randperm(10); %get elements in random order
    newpaper = zeros(1,3);
    newIndex = 1;
    for i = 1:3 %pull answers from old paper with some probability
       x = rand;
       if(x < predictability)
           newpaper(newIndex) = oldpaper(i);
       else
           newpaper(newIndex) = oldpaper(i+3);
       end
       newIndex = newIndex + 1;
    end
    studied = randperm(10); %random order of studied qs
    studiedRnd = studied(1:n);
    for i = 1:3 %reorder studied qs so that previous exam qs are last
        swpIndex = find(studied == oldpaper(i));
        studied([end-i swpIndex]) = studied([swpIndex end-i]);
    end
    studiedA = studied(1:n); %n number of studied qs
    studiedB = studied(end-n+1:end);
    
    X = [numel(setdiff(newpaper, studiedRnd)) < 2
        numel(setdiff(newpaper, studiedA)) < 2
        numel(setdiff(newpaper, studiedB)) < 2];
    
%     overlap = setdiff(newpaper, studied); %studied vs exam
%     if numel(overlap) < 2 %if at least 2 studied appear
%         X = 1; %pass
%     else
%         X = 0; %fail
%     end
end