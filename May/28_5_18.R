options(digits=12)

lambda1 <- 2 # X
lambda2 <- 3 # Y

p <- 7
lambda <- lambda1 +lambda2
cat("P( X + Y =", p, ") =", dpois(p, lambda = lambda), '\n')

x <- 5
sum_xy <- 15
p_cond <- dbinom(x, size=sum_xy, prob=(lambda1 / lambda))
cat("P( X=", x, "| X+Y=", sum_xy, ") =", p_cond)