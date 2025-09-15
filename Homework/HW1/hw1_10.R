###
#
#  DSCI 564: Howework 1
#  Jeong Hoon Choi
#  Q.10
#
###
set.seed(564)

# a
deck <- c(0, 0, 0, 1, 1, 1)

A <- matrix(nrow=3*52, ncol=2)

for (i in 1:3) {
    for (j in 1:52) {
        A[(i - 1) * 52 + j, 1] <- deck[2 * (i - 1) + 1]
        A[(i - 1) * 52 + j, 2] <- deck[2 * (i - 1) + 2]
    }
}

N <- 1000000
one <- 0; two <- 0

for (i in 1:N) {
    # b
    row <- sample(1:3*52, 1)
    col <- sample(1:2, 1)

    # c, d
    if (A[row, col]) {
        one <- one + 1
        if (A[row, 2 - col + 1]) {
            two <- two + 1
        }
    }
}

prob <- two / one
print(prob)
