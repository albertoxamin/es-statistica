library(MASS)

boxes <- 10
a_box <- c(6, 2, 8)#(n, n_white, n_black)
b_box <- c(4, 5, 5)#(n, n_white, n_black)

#p(a) = 6/10 -> p(wh) = 2/10
#               p(bl) = 8/10
#p(b) = 4/10 -> p(wh) = 5/10
#               p(bl) = 5/10

balls_in_box <- function(box) {
    return(box[2] + box[3])
}

#Color: 1 = white, 2 = black
p_box <- function(box, color){
    box[1] / boxes * box[color + 1] / balls_in_box(box)
}

#Domanda 1
p_white <- p_box(a_box, 1) + p_box(b_box, 1)
fractions(p_white)

#Domanda 2
p_a_box_given_white <- p_box(a_box, 1) / p_white
fractions(p_a_box_given_white)