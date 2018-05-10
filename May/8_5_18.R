options(digits = 15)

x <- 3
p_x <- 0.64

# Prendo P(X≤2) = 1 - 0.64
# (1 - p_x) = 1 - (1 - p)^(x-1)
# p_x^(1/(x-1)) = (1 - p)

p <- 1 - p_x ^ (1 / (x - 1))
cat("p:", p, "-> P( X >=", x, ") =", (1 - p) ^ (x - 1), "\n")

# P(X≤7|X≥3) = ?
lesser <- 7

p_int <- sum(p * (1 - p) ^ (x:lesser - 1))
cat("P(X <=", x, "| X >=", lesser,")", p_int, "/", p_x, "=", p_int/p_x)