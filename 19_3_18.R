Pp <- 0.09
PosPort <- 0.88
PosNPort <- 0.01
TNegPort <- 1-PosPort
TNegNPort <- 1-PosNPort
Ppc <- 1-Pp
PTNeg <- TNegPort*Pp+TNegNPort*Ppc
PPortTNeg <- TNegPort*Pp/PTNeg
library(MASS)
print(fractions(PTNeg))
print(fractions(PPortTNeg))