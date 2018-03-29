#funzioni 
compl <- function(x) {
    return(1 - x)
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

disp <- function(n, rm){
    return(factorial(n) / (factorial(rm) * factorial(n - rm)))
}

bayes <- function(pa, pb){
    return(pa / (pa + pb))
}

concat <- function(x){
    paste(x, collapse = "")
}

print_res <- function(s, x){
    paste(c(s, x), collapse = " = ")
}

frac <- function(n, d){
    return(paste(c(n, d), collapse = "/"))
}