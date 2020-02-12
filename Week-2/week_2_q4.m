PriorBelief = [0.05 0.1 0.05 0.05;0.05 0.1 0.05 0.05; 0.05 0.05 0.1 0.05; 0.05 0.05 0.1 0.05];
ProbabilityOfBars = [0.75 0.95 0.75 0.05; 0.05 0.75 0.95 0.75; 0.01 0.05 0.75 0.95; 0.01 0.01 0.05 0.75];
size = 4
PostBelief = zeros(size, size);
for n = 1:size
    for m = 1:size
        PostBelief(n,m) = (ProbabilityOfBars(n,m)*PriorBelief(n,m))/((ProbabilityOfBars(n,m)*PriorBelief(n,m))+((1 - ProbabilityOfBars(n,m))*(1-PriorBelief(n,m))));
    end
end

PostBelief