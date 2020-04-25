arr = zeros(1,10)

for n = 1:10
%     arr(n) = exactNone(n-1)+exactOne(n-1)
    arr(n) = exactOne(n-1)
end

%returns probability that none of the studied topics appear
function X = exactNone (n)
    if n<=7
        X = nchoosek(10-n,3)/nchoosek(10,3);
    else
        X = 0;
    end
end

%returns probability that exactly one of the studied topics appears
function X = exactOne (n)
    if n <= 7 & n >=1
%         X = nchoosek(9-n,2)/nchoosek(10,3);
        X = (nchoosek(n,1)*nchoosek(10-n,2))/nchoosek(10,3);
    else
        X = 0;
    end
end