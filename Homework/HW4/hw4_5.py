import math
import numpy as np

def pnk(n, k):
    c = 6 / (np.pi ** 2 * (np.exp(1) - 1))
    return c / (n ** 2 * math.factorial(k))

if __name__ == "__main__":
    N = 100
    sum_p = 0.0
    for n in range(1, N):
        sum_p += pnk(n, n + 1) + pnk(n + 1, n)

    print(sum_p)
