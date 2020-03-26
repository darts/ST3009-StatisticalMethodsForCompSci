N = 100;
Size = 10000;
EmpMeanTotal = zeros(1,Size);
for i = 1:Size
    EmpMean = 0;
    for j = 1:N
        EmpMean = EmpMean + round(rand);
    end
    EmpMeanTotal(i) = EmpMean / N;
    fprintf('%f\n', EmpMean )
end

histogram(EmpMeanTotal)