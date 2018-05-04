source("statistica.R")

lambda <- 2.026

f <- function(x) {
    if (x >= 0) {
        return(1 - exp(-lambda * x))
    } else {
        return(0)
    }
}

#Domanda 1
#Qual è la probabilità dell'intervallo (0.375, 0.406]?
#            exclude include
interval1 <- c(0.375, 0.406)
p_interval1 <- f(interval1[2]) - f(interval1[1])
print_res(concat(c("P(]", interval1[1], ",", interval1[2], "])")),
    p_interval1)

#Domanda 2
#Qual è la probabilità dell'intervallo [-1.691, 1.691)?
#            include exclude
interval2 <- c(-1.691, 1.691)
p_interval2 <- f(interval2[2] - lim1_n) - f(interval2[1] - lim1_n)
print_res(concat(c("P([", interval2[1], ",", interval2[2], "[)")),
    p_interval2)

#Domanda 3
#Qual è la probabilità del singoletto {0.481}?
singlet <- 0.481
p_singlet <- f(singlet) - f(singlet - lim1_n)
print_res(concat(c("P({", singlet, "})")),
    p_singlet)

#Domanda 4
#Qual è il valore q della variabile affinchè la probabilità dell'intervallo (−∞,q] sia pari a 0.654?
p_int <- 0.654
q <- -log(1 - p_int) / lambda
print(concat(c("P(]-inf,", q, "]) = ", p_int)))

#Plots
g <- Vectorize(f)
curve(g, -lambda, lambda)
curve(g, interval2[1], interval2[2], add = TRUE, col = "blue")
curve(g, interval1[1], interval1[2], add = TRUE, col = "red")
points(singlet, p_singlet)
points(q, p_int, col = "violet")