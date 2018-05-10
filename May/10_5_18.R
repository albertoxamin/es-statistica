options(digits = 12)

N <- c(-0.19, 8.14)
int <- c(-2.75, 0.76)
res <- 1 - pnorm(int[1], mean = N[1], sd = N[2], lower.tail = TRUE) -
    pnorm(int[2], mean = N[1], sd = N[2], lower.tail = FALSE)
cat("P(", int[1], "< X <", int[2], ") =", res)

lesser <- 0.29
res <- pnorm(lesser, mean = N[1], sd = N[2], lower.tail = TRUE)
cat("\nP( X <", lesser, ") =", res)

greater <- 2.09
res <- pnorm(-greater, mean = N[1], sd = N[2], lower.tail = TRUE) +
    pnorm(greater, mean = N[1], sd = N[2], lower.tail = FALSE)
cat("\nP( |X| >", greater, ") =", res)