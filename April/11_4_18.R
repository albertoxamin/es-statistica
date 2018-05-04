source("statistica.R")

students_r <- 0.604
students_p <- compl(students_r)

correct_r <- 0.852
correct_p <- 0.864

#Domanda 1
#P compila correttamente
p_compila <- students_r * correct_r + students_p * correct_p
p_compila

#Domanda 2
#P python|compila
p_compila_p <- students_p * correct_p / p_compila
p_compila_p

#Domanda 3
# 2 es 120 studenti  esercizi minimo per comb es diversi per ognuno
es <- 2
langs <- 3
studenti <- 120
for (x in 1:studenti){
    if (abs(choose(x, es) * (langs ^ es)) >= studenti){
        print(x)
        print(choose(x, es) * (langs ^ es))
        break
    }
}