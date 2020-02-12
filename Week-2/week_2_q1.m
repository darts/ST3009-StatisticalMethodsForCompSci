S = 6; 
R = 3;
N = 1;
T = 10000;
Out = randi([1 S],[R N T]);
twoCount = 0;
for n = 1:T
    if any(Out(:,:,n)==2)
        twoCount = twoCount + 1;
    end
end

twoCount/T