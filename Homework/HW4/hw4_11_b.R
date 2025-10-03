d <- (30 * 365 + 10 * 366) * 3
p <- factorial(13) * factorial(39) / factorial(52) * 40

N <- 1000
count <- 0

for (i in 1:N) {
    for (j in 1:d) {
        pick <- sample(1:round(1 / p), 1, replace=FALSE)
        if (pick == 1) {
            count <- count + 1
            break
        }
    }
}

n <- count / N
print(n)
