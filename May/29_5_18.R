options(digits=12)

n <- 2
sd <- 1/3 # ∂/3

pgr <- (1 - pnorm(sd)) ^ n
cat("∏P(Xi > u + ∂sd) =", pgr, "\n")

avgc <- 1 - pnorm(sqrt(n) * sd)
cat("P(X > u + ∂sd) =", avgc)