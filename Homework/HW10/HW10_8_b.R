sample_size <- 100000

N <- 50

storage <- c()
while (length(storage) < sample_size) {
    n <- sample(1:N, 1)
    l <- rexp(1, rate=n)
    if (l >= 1) {
        storage <- c(storage, n)
    }
}

hist(storage)
