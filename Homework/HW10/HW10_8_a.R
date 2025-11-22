sample_size <- 1000

N <- 50

storage <- c()
for (i in 1:sample_size) {
    n <- sample(1:N, 1)
    storage <- c(storage, rexp(1, rate=n))
}

prob = sum(storage >= 1) / sample_size
print(prob)
