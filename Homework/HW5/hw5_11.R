p <- 0.5
lambda <- 1
size <- 1e6

N <- rpois(size, lambda)
X <- rbinom(size, size=N, prob=p)

Y <- N - X

joint_XY <- prop.table(table(X, Y))
marginal_X <- prop.table(table(X))
marginal_Y <- prop.table(table(Y))

joint_XY - outer(marginal_X, marginal_Y)

