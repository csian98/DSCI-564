n <- 10000
sampling <- 1000
X <- c()

for (i in 1:sampling) {
    X <- c(X, sum(sample(n, n, replace=FALSE) == 1:n))
}

print(mean(X))
print(var(X))
