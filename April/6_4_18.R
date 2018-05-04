source("statistica.R")

#Sia dato lo spazio probabilizzato (Ω, A, Pr) dove, Ω=R, A=B(R) e Pr e definita nei seguenti singoletti di R

singlets_x <- c(1.00, 2.00, 3.00, 5.00, 7.00)
singlets_y <- c(0.14, 0.33, 0.05, 0.22, 0.26)

plot_graphs <- FALSE

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

if (plot_graphs){
    plot(singlets_x, singlets_y, ylim = c(0, 1))
    g <- Vectorize(f)
    curve(g, n = 500, add = TRUE)
}

#Qual è la probabilità dell'intervallo (3, 7]?
interval1 <- c(3, 7)
p_interval1 <- f(interval1[2]) - f(interval1[1])
print_res(concat(c("P(]", interval1[1], ",", interval1[2], "])")),
    p_interval1, precision = FALSE)

#Qual è la probabilità dell'intervallo [-7, 7)?
interval2 <- c(-7, 7)
p_interval2 <- f(interval2[2] - lim1_n) - f(interval2[1] - lim1_n)
print_res(concat(c("P([", interval2[1], ",", interval2[2], "[)")),
    p_interval2, precision = FALSE)


#Qual è il valore della funzione di ripartizione nel punto x=5.023?
px <- 5.023
value <- f(px)
print_res(concat(c("P(", px, ")")), value, precision = FALSE)