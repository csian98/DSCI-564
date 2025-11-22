library(MASS)

sample_size <- 10000
mu <- c(0, -1)
rho = -(1 / 2)
sigma <- c(1, 2)
cov <- matrix(c(sigma[1] * sigma[1], rho * sigma[1] * sigma[2],
                rho * sigma[1] * sigma[2], sigma[2] * sigma[2]), nrow=2)

xy <- mvrnorm(sample_size, mu, cov)

de <- (xy[, 1] + xy[, 2] > -3)
nu <- (xy[, 1] + xy[, 2] > -3) & (xy[, 1] + xy[, 2] > 0)
prob = sum(nu) / sum(de)
print(prob)
