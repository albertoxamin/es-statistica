source("statistica.R")

#Inputs
white <- 9
black <- 10

n_head <- 4
n_tail <- 5

#Procedimento
balls <- white + black

#Domanda 1
p_allw <- 0.5 * extr_nore(white, balls, n_head) +
    0.5 * extr_nore(white, balls, n_tail)
print_res("P(all white)", p_allw)

#Domanda 2
n_white <- 2

#x: the total number of balls picked
extr_n_white <- function(x) {
    return(
        extr_nore(white, balls, n_white) *
        extr_nore(black, balls - n_white, x - n_white) *
        factorial(x) / (factorial(n_white) *  factorial(x - n_white)))
}

n_white_oth_black <- 0.5 * extr_n_white(n_head) + 0.5 * extr_n_white(n_tail)
print_res(concat(c("P(", n_white, " white oth black)")), n_white_oth_black)

#Domanda 3
p_same <- p_allw +
    0.5 * extr_nore(black, balls, n_head) +
    0.5 * extr_nore(black, balls, n_tail)
print_res("P(all same color)", p_same)

#Domanda 4
print_res("P(all white|all same color)", p_allw / p_same)