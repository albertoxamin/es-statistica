source("statistica.R")

female <- 9
male <- 10

#Quante diverse commissioni si possono formare?
choose(female, 3) * choose(male, 3)

#E se 2 degli uomini riﬁutano di lavorare insieme?
choose(female, 3) * (choose(male - 2, 3) + 2 * choose(male - 2, 2))

#E se 2 delle donne riﬁutano di lavorare insieme?
choose(male, 3) * (choose(female - 2, 3) + 2 * choose(female - 2, 2))

#E se 1 uomo e 1 donna riﬁutano di lavorare insieme?
choose(female - 1, 3) * choose(male - 1, 3) +
    choose(female - 1, 3) * choose(male - 1, 2) +
    choose(female - 1, 2) * choose(male - 1, 3)