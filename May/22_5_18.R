options(digits=12)
#a exp(-bx-cy)
a <- 6
b <- 2
c <- 3
fxm <- function(x) ((a / c) * exp(-b * x))
fym <- function(y) ((a / b) * exp(-c * y))
fxym <- function(x, y) (a * exp(-b * x -c * y))
p1 <- 0.04
f1 <- fxm(p1)
cat("Fx in", p1, "=", f1, "\n")
p2 <- 0.87
f2 <- fym(p2)
cat("Fy in", p2, "=", f2, "\n")
indipendents <- abs(f1 * f2 - fxym(p1, p2)) < 0.0001
cat("X, Y indipendenti:", indipendents, "\n")
cat("E(X) =", 1 / b, "\n")
cat("E(Y) =", 1 / c, "\n")
correlation <- 0
if (!indipendents){
    # non l'ho implementato
    # correlation <- cov/√(Var(x)*Var(y))
}
cat("corr(X, Y) =", correlation, "\n")