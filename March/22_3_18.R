source("statistica.R")

difettosi <- 8 / 45

controlla3 <- 2 * difettosi * compl(difettosi) ^ 2
ptot <- compl(difettosi) ^ 2 + controlla3
print_res("P(Acquista lotto)", ptot)

print_res("P(controlla3|Acquista)", controlla3 / ptot)