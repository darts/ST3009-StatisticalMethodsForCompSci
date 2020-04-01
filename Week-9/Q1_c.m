function m = q1c()
    step = 0.1;
    accuracy = 0.00001;
    
    rng('shuffle');

    ix = [];
    iy = [];
    i = 0;
    x = 0;
    nx = 3;
    while abs(nx - x) > accuracy
        x = nx;

        y = f(x);
        ny = y;
        while ny >= y
            nx = x + ((rand() - 0.5) * step);
            ny = f(nx);
            i = i + 1;
            ix(i) = nx;
            iy(i) = ny;
        end
    end
    m = f(x);

    disp(i);
    scatter(ix, iy)
end

function y = f(x)
    y = x^2 - 1;
end
