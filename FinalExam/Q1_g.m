rng(221);
%N = 1000; %a
N = 10000; %b
runs = 1000;
freq = zeros([1,runs]);
%lowerBound = 0.79223; %a
%upperBound = 0.84117; %a
lowerBound = 0.80897; %b
upperBound = 0.82443; %b
perBound = 0;

for i = 1:runs
    freq(i) = extSim(N);
    if freq(i) > lowerBound & freq(i) < upperBound
       perBound = perBound + 1; 
    end
end
perBound = perBound/runs
hist(freq)


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

function Y = extSim(N)
    generated = randi(11,[1,N])-1;
    Y = 0;
    for i = 1:numel(generated)
        Y = Y + stoSim3(7);
    end
    Y = Y/N;
end