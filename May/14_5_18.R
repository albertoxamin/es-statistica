options(digits = 12)

p1 <- c(-14.915, 0.095)
p2 <- c(-11.234, 0.554)

coeff <- 0.499 # P(|X-μ| > coeff * σ)

q1 <- qnorm(p1[2])
q1
q2 <- qnorm(1 - p2[2])
q2
mean <- (((q1 * p2[1]) - (q2 * p1[1])) / (q1 - q2))
cat("mean =", mean, "\n")
s_dev <- ((p1[1] - mean) / q1)
cat("standard deviation =", s_dev, "\n")
f <- function(p) pnorm(p, mean, s_dev, lower.tail = TRUE, log.p = FALSE)
pr <- 1 - f((coeff * s_dev) + mean) + f((-coeff * s_dev) + mean)
cat("P(|X - u| > ", coeff, "* sd) =", pr, "\n")