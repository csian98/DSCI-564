size <- 10000
sample1 <- c()
for (i in 1:size) {
    sample1 <- c(sample1, sum(rnorm(30, 1, 4)))
}

sample2 <- rnorm(size, 30, sqrt(120))

g1 <- hist(sample1)
g2 <- hist(sample2)
