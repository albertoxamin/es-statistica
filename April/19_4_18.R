source("statistica.R")

#P(x)=ϑ(1-ϑ)^(x-1)

px <- function(x, theta) {
    return(theta * (1 - theta) ^ (x - 1))
}

alpha <- 0.138
theta <- (2 + sqrt(4 - 4 * compl(alpha))) / 2
if (theta < 0 || theta > 1)
    theta <- (2 - sqrt(4 - 4 * compl(alpha))) / 2
print_res("Theta", theta, FALSE)

p_int <- (px(3, theta) + px(4, theta)) / alpha
print_res("P(X<=4 | X>= 3)", p_int, FALSE)