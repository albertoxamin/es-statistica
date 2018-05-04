source("statistica.R")

coins <- 15
cents_50 <- 6
full_euro <- coins - cents_50

extracted <- 6

hgeo <- function(x) { 
    return(dhyper(x, cents_50, full_euro, extracted, log = FALSE))
}

gre_x <- 3
p_gre <- 1
for (i in 0:(gre_x - 1)) {
   p_gre <- p_gre - hgeo(i)
}
print_res("P(X>=3)", p_gre, FALSE)

y <- function(x){
    return(0.5 * x + 6 - x)
}

for (n in 0:extracted){
    print(concat(c("X = ", n, ", Y = ", y(n))))
}

hgeo(6)