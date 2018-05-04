source("statistica.R")

omega <- c(10.78, 19.6)

f <- function(a){
    if (a < omega[1])
        return(0)
    else if (a < omega[2])
        return( ( (a - omega[1]) ^ 2) / 77.7924)
    else
        return(1)
}

g <- Vectorize(f)
curve(g, from = omega[1] - 1, to = omega[2] + 1)

#Domanda 1
pt <- 17.316
val <- f(pt)
points(pt, y = val, type = "p")
print_res(concat(c("F(", pt, ")")), val, FALSE)

#Domanda 2
int <- c(11.42, 12.73)
p_a1 <- f(int[2]) - f(int[1])
curve(g, from = int[1], to = int[2], col = "red", add = TRUE)
print_res("P(A1)", p_a1, FALSE)

#Domanda 3
int <- c(-19.59, 19.59)
p_a2 <- f(int[2] - lim1_n) - f(int[1] + lim1_n)
print_res("P(A2)", p_a2, FALSE)