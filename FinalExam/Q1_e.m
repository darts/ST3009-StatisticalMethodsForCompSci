stoSim3(1)
function X = stoSim3 (n)
    choice = randperm(10); %get elements in random order
    choice = choice(1:3); %select 3 questions for exam
    studied = randperm(10); %random order of studied qs
    studied = studied(1:n); %n number of studied qs
    overlap = setdiff(choice, studied); %studied vs exam
    if numel(overlap) < 2 %if at least 2 studied appear
        X = 1;
    else
        X = 0;
    end
end