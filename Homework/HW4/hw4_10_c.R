N <- 100000
count <- 0
for (i in 1:N) {
    if (3 %in% table(sample(1:365, 50, replace=T)))
        count <- count + 1
}

print(count / N * 100)
