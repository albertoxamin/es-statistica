source("statistica.R")

bad <- 0.16
picked <- 7

ale_bin <- function(n, k, p){
    return(choose(n, k) * (p ^ k) * (compl(p) ^ (n - k)))
}

ale_rip <- function(x){
    res <- 1
    for (i in x:picked) {
        res <- res - ale_bin(picked, i, bad)
    }
    return(compl(res))
}

#Domanda 1
n_dif <- 5
print_res(concat(c("P(", n_dif, " bad)")), ale_bin(picked, n_dif, bad))

#Domanda 2
gre_diff <- 5
print_res(concat(c("P(>=", gre_diff, " bad)")), ale_rip(gre_diff))

#Domanda 3
gr_diff <- 5
print_res(concat(c("P(>", gr_diff, " bad)")), ale_rip(gr_diff))