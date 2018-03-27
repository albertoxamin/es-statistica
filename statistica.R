#funzioni 
compl <- function(x) {
    return(1 - x)
}

bayes <- function(pa, pb){
    return(pa / (pa + pb))
}

print_res <- function(s, x){
    paste(c(s, x), collapse = " = ")
}