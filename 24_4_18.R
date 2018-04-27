source("statistica.R")

values <- c(2, 4, 7)
E <- 4.051
Var <- 4.95

a <- rbind(values, values ^ 2, c(1, 1, 1))
b <- c(E, Var + E ^ 2, 1)

res <- solve(a, b)

moment_third_free <- 0
for (i in 1:3){
  moment_third_free <- moment_third_free + values[i]^3*res[i]
}

moment_third_c <- 0
for (i in 1:3){
  moment_third_c <- moment_third_c + res[i] * (values[i] - E) ^ 3
}


print_res(c("Pr ", values[1]), res[1])
print_res(c("Pr ", values[2]), res[2])
print_res(c("Pr ", values[3]), res[3])

print_res("Momento di ordine terzo NON centrato", moment_third_free, FALSE)
print_res("Momento di ordine terzo centrato", moment_third_c, FALSE)