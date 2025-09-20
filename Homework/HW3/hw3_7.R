n <- 1000000
simlist <- numeric(n)

for (i in 1:n) {
    trial <- sample(1:52, 2, replace=FALSE)
    success <- if ((trial[1] - 1) %/% 13 == (trial[2] - 1) %/% 13) 1 else 0
    simlist[i] <- success
}

mean(simlist)
