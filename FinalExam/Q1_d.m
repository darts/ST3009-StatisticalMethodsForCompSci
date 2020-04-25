arr = zeros(1,11);
idx = [0:10];

for n = 1:11
    arr(n) = exactNone(n-1)+exactOne(n-1);
end
bar(idx, arr)
title("Probability of failing exam when studying n questions (4 questions on paper)")
xlabel("n")
ylabel("P(failure)")

%returns probability that none of the studied topics appear
function X = exactNone (n)
    if n<=6
        X = nchoosek(10-n,4)/nchoosek(10,4);
    else
        X = 0;
    end
end

%returns probability that exactly one of the studied topics appears
function X = exactOne (n)
    if n <= 7 & n >=1
        X = (nchoosek(n,1)*nchoosek(10-n,3))/nchoosek(10,4);
    else
        X = 0;
    end
end