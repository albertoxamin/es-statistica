source("statistica.R")

px <- function(x) {
    return(1 / x - 1 / (x + 1))
}

alpha <- 0.858

g <- Vectorize(px)

plot(g, 1, 20)

print_res("n", ceiling(1 / alpha), FALSE)
