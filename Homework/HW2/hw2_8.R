# CoinFlip.R

n <- 10000
simlist <- numeric(n)
for (i in 1:n) {
    trial <- sample(0:1, 4, replace=TRUE)
    success <- if (sum(trial) == 1) 1 else 0
    simlist[i] <- success
}

mean(simlist)
