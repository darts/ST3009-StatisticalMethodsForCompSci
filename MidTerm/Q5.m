L = [0.23926015099014 0.019489570349559 0.2325200588192 0.16747634972563 0.11241271100911 0.19502896312529 0.033812195981071];
P = [0.2540 0.3460 0.2980 0.3800 0.2250 0.2820 0.3170]; 

iterations = 100000;

cumulative = 0;

for i = 1: 100000
    cumulative = cumulative + getRandomUser(L, P);
end

cumulative / iterations
% getRandomUser(L, P)


function F = getRandomUser(P,X)
    p = cumsum(P);
    [~, a] = histc(rand,p);
    F = X(a + 1); 
end