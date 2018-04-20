source("statistica.R")

equal <- c(5, 6)

#Poisson (e^-𝜆)*(𝜆^n)/n!

lambda <- factorial(equal[2]) / factorial(equal[1])
print_res("Lamda", lambda, FALSE)

values <- c(7, 4)
p_gre <- ppois(values[2], lambda = lambda, lower = FALSE)
p_int <- 0
for (i in values[2]:values[1]){
    p_int <- p_int + dpois(i, lambda = lambda)
}
print_res("P(X <= 7 | X >= 4)", p_int / p_gre, FALSE)

Y <- function(x) {
    0.02 - 0.17 * dpois(x, lambda = lambda)
}

#∑yipi=
print_res("E(Y)", 0.02 - 0.17 * lambda, FALSE)
print_res("E(Y)", (0.17 ^ 2) * lambda, FALSE)
