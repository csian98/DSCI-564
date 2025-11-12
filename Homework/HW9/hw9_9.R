rexppois <- function(k, mu) {
    lambdas <- rexp(k, rate=mu)
    return(rpois(k, lambda=lambdas))
}

k <- 100000
mu <- 1

samples <- rexppois(k, mu)
print(mean(samples))
