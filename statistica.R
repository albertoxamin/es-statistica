#funzioni 
compl <- function(x) {
    return(1 - x)
}

concat <- function(x){
    paste(x, collapse = "")
}

frac <- function(n, d){
    return(paste(c(n, d), collapse = "/"))
}

#Limited factorial
# x: the number
# times: how long should the factorial proceed
fact_l <- function(x, times){
    val <- 1
    for (i in (x - times):x) {
       val <- val * i
    }
    return(val)
}

#Extraction without reintroduction
# x: number of samples
# tot: total samples
# times: how many extractions
extr_nore <- function(x, tot, times){
    val <- 1
    if (times > 0){
        for (i in 0:(times - 1)){
            val <- val * (x - i) / (tot - i)
        }
    }
    return(val)
}

disp <- function(n, rm){
    return(factorial(n) / (factorial(rm) * factorial(n - rm)))
}

bayes <- function(pa, pb){
    return(pa / (pa + pb))
}

#lim n->inf 1/n
lim1_n <- 0.000000000000001

print_res <- function(s, x, precision = TRUE){
    if (precision) val <- formatC(digits = 20, format = "f", x) else val <- x
    paste(c(s, val), collapse = " = ")
}