options(digits = 12)

#Valori inseriti come letti dall'esercizio in ordine
Dnom <- 13
Dmin <- 11.37
Dmag <- 14.54
inf <- 0.1
sup <- 0.06
#Domanda 3
DsupTmin <- 0.07
#Domanda 4
DYmin <- 3.66

sup <- 1 - sup
q_inf = qnorm(inf)
q_sup = qnorm(sup)

mean <- (Dmag * q_inf - Dmin * q_sup) / (q_inf - q_sup)
mean

s_dev <- (Dmag - mean) / q_sup
s_dev

s_dev_2 <- (Dmag - mean) / -qnorm(DsupTmin)
s_dev_2

P <- pnorm(DYmin ^ 2, mean, s_dev)
P