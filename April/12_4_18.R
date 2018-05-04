source("statistica.R")

big_f <- list(1, 4, 5, 8, 13, 19, c(9, 10), c(10, 11), c(13, 16))

singlets_x <- c(1.00, 4.00, 5.00, 8.00, 9.118, 10.452, 14.327, 19)
singlets_y <- c(0.075, 0.116, 0.11, 0.183, 0.096, 0.188, 0.019, 0.213)

f <- function(x){
    sum <- 0
    for (i in 1:length(singlets_x)) {
       if (x >= singlets_x[i]){
            sum <- sum + singlets_y[i]
       }else{
           return(sum)
       }
    }
    return(sum)
}

singlet_value <- function(x){
    return(f(x + lim1_n) - f(x - lim1_n))
}

plot(singlets_x, singlets_y, ylim = c(0, 1))
g <- Vectorize(f)
curve(g, n = 1000, add = TRUE)

#Qual è la probabilità dell'intervallo (3, 7]?
interval1 <- c(3.999, 18.999)
p_interval1 <- 0
for (i in 1:length(big_f)){
    if (length(big_f[[i]]) == 2){
        curve(g, from = big_f[[i]][1], to = big_f[[i]][2],
        n = 500, add = TRUE, col = "red")
        p_interval1 <- p_interval1 +
        f(big_f[[i]][2]) - f(big_f[[i]][1] - lim1_n)
    }else{
        p_interval1 <- p_interval1 + singlet_value(big_f[[i]])
        points(xy.coords(big_f[[i]], f(big_f[[i]])), col = "red")
    }
}
print_res(concat(c("P(]", interval1[1], ",", interval1[2], "]^F)")),
    p_interval1, precision = FALSE)

interval2 <- c(8.001, 8.999)
curve(g, from = interval2[1], to = interval2[2],
        n = 500, add = TRUE, col = "blue")
values <- c()
for (i in 1:length(singlets_x)) {
   if (interval2[1] >= singlets_x[i] &&
    interval2[2] <= singlets_x[i]){
        values <- c(values, f(singlets_x[i]))
   }
}
if (length(values) == 0){
    values <- f( (interval2[1] + interval2[2]) / 2)
}
print_res(concat(c("valori in [", interval2[1], ",", interval2[2], "])")),
    paste(values, collapse = ","))

element <- 14.616
p_element <- 0
for (i in 1:length(singlets_x)) {
   if (element <= singlets_x[i]){
        p_element <- p_element + singlets_y[i]
   }
}
print_res(concat(c("P(x>", element, ")")), p_element, FALSE)