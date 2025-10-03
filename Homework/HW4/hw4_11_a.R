N <- 1000
count <- 0
for (i in 1:N) {
    vec <- sample(1:52, 13, replace=FALSE)
    if (all(1:12 %in% vec))
        count <- count + 1
}

simulation <- count / N
probability <- factorial(13) * factorial(39) / factorial(52) * 40

print(paste("simulation: ", simulation, ", probability: ", probability))
