rng(221);
low = 0.0;
high = 0.3;
steps = 0.05;
runs = 1000;
resMat = zeros(10, cast((high-low)/steps,'uint8'));
legArr = zeros(1, cast((high-low)/steps,'uint8'));

for i = 0:((high-low)/steps)+1
   legArr(i+1) = cast((low+i*steps)*100,'uint8');
end    
legArr = string(legArr)


for i = 0:10
    step = 1;
   while step < ((high-low)/steps)+2
       pred = low + ((step-1)*steps);
       xSum = 0;
       for j = 1:runs
           xSum = xSum + stoSim3(i, pred);
       end
       resMat(i+1, step) = xSum/runs;
       step = step + 1; 
   end
end
idx = [0:10];
% bar(idx,resMat)
line(idx, resMat)
legend(legArr)
xlabel("Questions Studied")
ylabel("P(Pass)")



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
    for i = 1:3 %reorder studied qs so that previous exam qs are last
        swpIndex = find(studied == oldpaper(i));
        studied([end-i swpIndex]) = studied([swpIndex end-i]);
    end
    studied = studied(1:n); %n number of studied qs
    overlap = setdiff(newpaper, studied); %studied vs exam
    if numel(overlap) < 2 %if at least 2 studied appear
        X = 1; %pass
    else
        X = 0; %fail
    end
end