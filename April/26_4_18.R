source("statistica.R")

p_centro <- 2/12

at_least <- 3

x <- 1:(at_least - 1)
p_at_leasts <- 1 - sum(((p_centro) ^ (x - 1)) * compl(p_centro))
print_res(c("P(X>=", at_least, ")"), p_at_leasts, FALSE)

times_played <- 2
shots <- 6

x <- times_played:(shots - 1)
p_n_shots <- 1 - sum(choose(x - 1, times_played - 1) * (p_centro ^ (x - times_played)) * (compl(p_centro) ^ times_played))
print_res(c("P(Y>=", shots, ")"), p_n_shots, FALSE)