options(digits = 12)

equal <- c(2, 3)
#Poisson (e^-𝜆)*(𝜆^n)/n!
lambda <- factorial(equal[2]) / factorial(equal[1])
cat("Lamda", lambda)
pt <- 3
cat("\nF( X =", pt, ")", ppois(pt, lambda = lambda, lower.tail = TRUE))