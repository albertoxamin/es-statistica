source("statistica.R")
library(MASS)

values <- c(-8, -6, 8)
alpha_coefficents <- c(7, 1, -8)  # pattern at [3] : (1 + ɑ)

cat("1) Semplice sistema di disequazioni...\n2) idem\n")

i <- 1:3
alpha <- values[3] / (-sum(values[i] * alpha_coefficents[i]))
cat("3) E(x)=0 per a=", values[3], "/", -sum(values[i] * alpha_coefficents[i]), "\n")
p <- function(i) {
    if (i == 3)
        return(1 - alpha_coefficents[3] * alpha)
    else 
        return(alpha_coefficents[i] * alpha)
}
var <- 0
for (i in 1:3) {
    var <- var + (values[i] ^ 2) * p(i)
}
cat("4) Var con a trovato prima =", var, "\n")