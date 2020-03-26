N = 100;
Size = 10000;
means = zeros(1,Size);
for t = 1:Size
    Sample = randi([0 1], 1, N);
    tmpMean = 0;
    for i = 1:N
        tmpMean = tmpMean + Sample(i);
    end
    means(t) = tmpMean / N;
end

Mean = mean(means)
PD = std(means)

histogram(means)