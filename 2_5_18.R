source("statistica.R")

mean_unif <- function(int){
    return(0.5 * (int[1] + int[2]))
}

deviation_unif <- function(int){
    return((int[2] - int[1]) / sqrt(12))
}

interval <- c(-1.71, 3.22)
order <- 0.6
y <- 0.72

mean <- mean_unif(interval)
cat("E(X) =", mean, "\n")
dev <- deviation_unif(interval)
cat("standard deviation =", dev, "\n")
quantile <- qunif(order, min = interval[1], max = interval[2])
cat("quantile di ordine", order, "=", quantile, "\n")
Y <- function(x){
    return((x - mean) / dev)
}
inteval_y <- c(Y(interval[1]), Y(interval[2]))
dy <- dunif(y, min = inteval_y[1], max= inteval_y[2])
cat("valore in", y, "=", dy, "\n")