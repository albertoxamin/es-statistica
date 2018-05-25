# options(digits = 22)

# N <- c(-21.61, 9.79)
# N[2] <- sqrt(N[2])

# order <- 0.2
# qnorm(order, mean = N[1], sd = N[2])


# P(|X - mean| > c) = 0.73
# P(X-mean > c) + P(X+mean < c) = 0.73
options(digits=16)
# Parametri della v.a. (X ~ N(mean,s_dev))
mean <- -21.61
s_dev <- sqrt(9.79)
# Parametri dei quesiti
q1 <- 0.2
q2 <- 0.73
q3 <- 0.69

qnorm(q1, mean, s_dev)
p2 <- qnorm(1 - q2 / 2) * s_dev
p2
d <- (qnorm(1 - q3 / 2) * (s_dev))^2
d