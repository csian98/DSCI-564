n <- 3 * (30 * 365 + 10 * 366)
p <- factorial(13) * factorial(39) / factorial(52) * 40

lambda <- n * p
probability <- 1 - dpois(x=0, lambda=lambda, log=FALSE)
print(probability)
