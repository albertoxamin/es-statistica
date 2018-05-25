options(digits=12)
expvalue = function (x, pr_x) sum(x * pr_x)
variance = function (x, pr_x) expvalue(x ^ 2, pr_x) - expvalue(x, pr_x) ^ 2

s_x = c(-8,-5,8)                        #Supporto v.a. X
pr_x = c(.49,.24,.27)                   #Probabilità v.a. X

s_y = c(-9,-8,-5,-2)                      #Supporto v.a. Y
pr_cond_yx = matrix(
    data=c( .28,.25,.22,.25,
            .20,.19,.28,.33,
            .23,.25,.24,.28),
    nrow=3, byrow=TRUE) #Matrice Pr(Y|X), letta in ordine di riga

# Valore atteso di X
print(expvalue(s_x, pr_x))
#Varianza di X
print(variance(s_x, pr_x))

#Var(E(X|Y))
pr_xy= pr_cond_yx*pr_x  #Matrice con Pr(X,Y)
pr_y = colSums(pr_xy)   #Vettore probabilità marginali di Y
pr_cond_xy = t(t(pr_xy)/pr_y)   #Matrice con Pr(X|Y)

e_cond_xy = colSums(pr_cond_xy * s_x)
var_e_cond_xy = variance(e_cond_xy, pr_y)
print(var_e_cond_xy)

#E(Var(X|Y))
var_cond_xy_aux = colSums(pr_cond_xy * s_x ^ 2)
e_var_cond_xy = expvalue(var_cond_xy_aux - e_cond_xy ^ 2, pr_y)
print(e_var_cond_xy)

#(Dovrebbe valere anche E(Var(X|Y)) = Var(X) - Var(E(X|Y)) per la formula di scomposizione della varianza