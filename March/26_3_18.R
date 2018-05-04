source("statistica.R")

#Domanda 1
bianche <- 3
rosse <- 4
verdi <- 4
allineamenti <- factorial(bianche + rosse + verdi) /
        (factorial(rosse) * factorial(bianche) * factorial(verdi))
print_res("Allineamenti palline", allineamenti)

#Domanda 2
consonanti <- 8
vocali <- 5
combinazione <- c(3, 2) #consonanti, vocali

parole <- choose(consonanti, combinazione[1]) *
        choose(vocali, combinazione[2]) *
        factorial(combinazione[1] + combinazione[2])
print_res("Parole possibili", parole)
print_res("Parole possibili (log)", log(parole))

#Domanda 3
n <- 1616

approx <- (n + 0.5) * log(n) - n + 0.5 * log(2 * pi)
print_res("Approssimazione", approx)