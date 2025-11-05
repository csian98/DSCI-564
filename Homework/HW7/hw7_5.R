N = 1000

voter = 12000
democrats = 6000
republicans = 5000
poll = 200

# 1
omega <- c(rep(0, voter - democrats - republicans), rep(1, democrats), rep(2, republicans))
X <- c()
for (i in 1:N) {
    X <- c(X, sum(omega[sample(voter, poll, FALSE)] == 1))
}
Xmean = mean(X)
Xstd = sd(X)

print(Xmean)
print(Xstd)

# 2
Y <- c()
for (i in 1:N) {
    Y <- c(Y, sum(omega[sample(voter, poll, FALSE)] == 2) > poll / 2)
}

print(sum(Y) / N)
