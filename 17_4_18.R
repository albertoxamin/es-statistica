source("statistica.R")

x <- c(-9, -7, -6, 6, 7, 9)

P <- function(k, x){
    return(k * (x ^ 2))
}

sum <- 0
for (v in x){
    sum <- sum + P(1, v)
}
print(concat(c("k = 1/", sum)))

y <- function(x){
    return(log(x ^ 2))
}
search_y <- 3.8918203
prob <- 0
for (i in 1:length(x)){
    if (abs(y(x[i]) - search_y) < 0.00001)
        prob <- prob + P(1, x[i])
}
print(concat(c("Py = ", prob, "/", sum)))

val <- 0
for (i in 1:length(x)){
    val <- val + y(x[i]) * P(1 / sum, x[i])
}

print_res("Valore atteso E(Y)", val, FALSE)

variance <- 0
for (i in 1:length(x)){
    variance <- variance + ( (y(x[i]) - val) ^ 2) * P(1 / sum, x[i])
}
print_res("Varianza di Y", variance, FALSE)