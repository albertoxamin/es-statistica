source("statistica.R")

punti <- c(-0.095, 0.512, 1.119, 1.725, 2.332, 2.938, 3.545)
valori <- c(0, 0.0046, 0.0445, 0.1896, 0.471, 0.7781, 0.9567)

f <- function(x){
    for (s in 1:length(punti)) {
       if (x < punti[s]) return(valori[s])
    }
    return(1)
}

#Domanda 1
inf <- 0.512
sup <- 2.79

print_res(concat(c("P(]", inf, ",", sup, "])")),
    f(sup) - f(inf))

#Domanda 2
inf <- 0.512
sup <- 1.725

print_res(concat(c("P([", inf, ",", sup, "[)")),
    f(sup - 0.000001) - f(inf - 0.000001))

#Domanda 3
p_min <- 0.0399

delta <- 2 #un numero alto (per P)
sing <- -9999
singoletti <- c(0)
for (v in 1:length(valori)){
    diff <- p_min - valori[v]
    prev <- if (v > 0) valori[v - 1] else 0
    singoletti <- c(singoletti, valori[v] - prev)
    if (diff > 0 && diff < delta){
        delta <- diff
        sing <- punti[v]
    }
}

print_res(concat(c("P(X)>", p_min)), sing)

#Grafici
par(mfrow = c(1, 2))
plot(punti, valori, "s")
plot(punti, singoletti, ylim = c(0, 1))
text(punti, singoletti, labels = singoletti, cex = 0.7, pos = 3)
lines(punti, rep(p_min, length(punti)), col = "red")