source("statistica.R")

p_not_used <- 0.14

vehicle_a <- c(15, 13) #sold, seats
vehicle_b <- c(23, 22)

p_not_greater <- 0.33

p_overbook <- function(vehicle) {
    i <- (vehicle[2]+1):vehicle[1]
    return(sum(dbinom(i, vehicle[1], 1 - p_not_used)))
}

cat("P overbook", vehicle_a[2], "=", p_overbook(vehicle_a), "\n")
cat("P overbook", vehicle_b[2], "=", p_overbook(vehicle_b), "\n")

for (i in vehicle_a[2]:(vehicle_a[2] + 100)) {
    overbook <- p_overbook(c(i, vehicle_a[2]))
    if (overbook > p_not_greater)
    {
        cat("p_overbook con", i, "=", overbook, "quindi", i - 1, "\n")
        break
    }
}