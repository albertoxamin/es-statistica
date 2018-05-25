options(digits=12)
X <- c(-15, -10, 18)#X
Y <- c(-17, -16, -8, -3)#Y
P_marginaleX <- c(0.49, 0.24, 0.27)#probabilità marginale x

d <- c(
        0.28, 0.25, 0.22, 0.25,
        0.20, 0.19, 0.28, 0.33,
        0.23, 0.25, 0.24, 0.28) #Y|X
m <- matrix(d, 3, 4, byrow=TRUE)
Mxy <- m * P_marginaleX #matrice x,y

fym<-function(){
    ve <- NULL
    for(j in 1:4){
        ve <- c(ve, sum(Mxy[1:3,j]))
    }
    return(ve)
}

P_marginaleY <- fym()#marginale y

i <- 1:3
Ex <- sum(P_marginaleX[i] * X[i])
Vx <- sum(P_marginaleX[i] * (X[i] - Ex) ^ 2)

i <- 1:4
Ey <- sum(P_marginaleY[i]*Y[i])
Vy <- sum(P_marginaleY[i]*(Y[i]-Ey)^2)

Exy <- 0
for (i in 1:3) {
    for (j in 1:4) {
        Exy <- Exy + (X[i] * Y[j] * Mxy[i,j])
    }
}

cat("E(X*Y) =", Exy, "\n")

Cov <- Exy - (Ex * Ey)
cat("Cov(X,Y) =", Cov, "\n")

a <- 0.18#coef x
b <- 0.54#coef y

Covt <- Cov * a * b
cat("Cov(", a, "*X", b, "*Y ) =", Covt , "\n")

coef <- (Cov / sqrt(Vx * Vy))
cat("p(X,Y) = ", coef, "\n")

coeft <- Covt / (sqrt(Vx * Vy) * abs(a * b))
cat("p(", a, "X,", b, "Y) = ", coeft)