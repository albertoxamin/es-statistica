source("statistica.R")

male <- 4
female <- 3
tot_male <- 7
tot_female <- 6

#Domanda 1
any_mf <- choose(tot_male, male) * choose(tot_female, female) *
    factorial(male + female)
print_res("Tutti", any_mf)

#Domanda 2
picky_f <- choose(tot_male, male) * choose(tot_female - 1, female) *
    factorial(male + female)
print_res("Una certa femmina", picky_f)

#Domanda 3
picky_m <- choose(tot_male - 2, male) * choose(tot_female, female) *
    factorial(male + female)
print_res("Una certa femmina", picky_m)