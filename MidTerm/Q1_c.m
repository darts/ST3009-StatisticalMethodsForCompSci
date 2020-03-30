mean = 0.2540;
mu = mean

sigma = sqrt(mu*(1-mu))

N = 1000

lower_chebychev = mu - (sigma / sqrt(0.05 * N))
upper_chebychev = mu + (sigma / sqrt(0.05 * N))

