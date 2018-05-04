source("statistica.R")

white <- 4  #⚪️
red   <- 10 #🔴
green <- 7  #🍏

balls <- white + red + green

total <- disp(balls, 3)

pick <- function(w, r, g) {
    return(disp(white, w) * disp(red, r) * disp(green, g))
}

#Domanda 1
all_red <- pick(0, 3, 0)
print_res("P(3 red)", frac(all_red, total))

#Domanda 2
all_white <- pick(3, 0, 0)
print_res("P(3 white)", frac(all_white, total))

#Domanda 3
red2_white1 <- pick(1, 2, 0)
print_res("P(2 red 1 white)", frac(red2_white1, total))

#Domanda 4
at_least_white <- total - choose(balls - white, 3)
print_res("P(at least 1 white)", frac(at_least_white, total))

#Domanda 5
colorful <- white * red * green
print_res("P(colorful)", frac(colorful, total))

#Domanda 6
print_res("P(red-white-green)",
    frac(red * white * green, (balls * (balls - 1) * (balls - 2))))