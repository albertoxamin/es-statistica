options(digits = 12)

X <- c(2.42, 0.37) # N(µ, ∂^2)
Y <- c(2.82, 0.34)
t_tot <- 5.88

XY <- c(X[1] + Y[1], X[2]^2 + Y[2]^2)
p_more_t <- 1 - pnorm(t_tot, mean = XY[1], sd = sqrt(XY[2]))
cat("P(t >", t_tot, ") =", p_more_t, "\n")
lim_sup <- XY[2]/(t_tot-XY[1])^2
cat("Lim sup con chebyshev =", lim_sup)