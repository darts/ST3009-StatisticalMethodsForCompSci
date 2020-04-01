q1_a(1)

toPlot = 1000;
dispArr = zeros(1,toPlot);
markers = zeros(1,toPlot);
function min = q1_a(step)
    accuracy = 0.000000001;

    j = 0;
    nx = 3;
    
    count = 1;
    while abs(nx - j) > accuracy
        j = nx;
        nx = j - (step * (2*j));
        count = count + 1;
        dispArr(count) = j^2 - 1;
        markers(count) = j;
        if count > 1000
            break
        end
    end
    count;
    min = j^2 - 1;
end