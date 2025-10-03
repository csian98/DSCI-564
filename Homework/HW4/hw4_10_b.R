N <- 1000
n <- 1
count <- 0

while (n <= 365 && count / N < 0.95) {
    n <- n + 1

    count <- 0
    for (i in 1:N) {
        if (2 %in% table(sample(1:365, n, replace=T))) {
            count <- count + 1
        }
    }
    print(paste(n, ":", count / N * 100))
}

print(n)
