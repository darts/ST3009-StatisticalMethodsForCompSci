stoSim3(10)
function X = stoSim3 (n)
    choice = randperm(10);
    choice = choice(1:3);
    studied = randperm(10);
    studied = studied(1:n);
    overlap = setdiff(choice, studied);
    if numel(overlap) < 2
        X = 1;
    else
        X = 0;
    end
end