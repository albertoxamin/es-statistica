options(digits = 12)

X <- c(-2.16, 1.74) # N(µ, ∂^2)
Y <- c(3.98, 11.63)

p_neg <- function(N) pnorm(0, N[1], sqrt(N[2]))

p_x_y_positive <- 1 - p_neg(X) * p_neg(Y)
cat("P almeno una va tra X e Y sia positiva =",
    p_x_y_positive, "= evento A\n")
p_x_positive <- (1 - p_neg(X)) / p_x_y_positive
cat("P(X>=0|Evento A) =", p_x_positive)