function q1a()
    steps = [0.01 0.1 1];
    for i = 1:numel(steps)
        s = steps(i);
        [m, ix, iy] = grad(s);
        disp(m);

        subplot(numel(steps), 1, i);
        scatter(ix, iy);
        title(sprintf("step = %d, iterations = %d", s, numel(ix)));
    end
end

function [m, ix, iy] = grad(step)
    precision = 0.000000001;

    ix = [];
    iy = [];
    i = 0;
    x = 0;
    nx = 3;
    while abs(nx - x) > precision
        x = nx;
        nx = x - (step * df(x));
        i = i + 1;
        ix(i) = nx;
        iy(i) = f(nx);
    end
    m = f(x);
    disp(i);
end

function y = f(x)
    y = x^2 - 1;
end

function dy = df(x)
    dy = 2*x;
end
