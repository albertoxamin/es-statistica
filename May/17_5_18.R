options(digits=12)
#Somma degi coefficienti di k
tot<- 2+1+6+3+8+5+7+9+4
k<- 1/tot

#Valori di X
X1<- -3.82
X2<- 0.7
X3<- 4.56

#Valori di Y
Y1<- -1.29
Y2<- 1.08
Y3<- 2.15

#Pr(X=X1)=x1 (somma sulle righe)
x1<- 2*k+1*k+6*k
x2<- 3*k+8*k+5*k
x3<- 7*k+9*k+4*k

#Pr(Y=Y1)=y1 (somma sulle colonne)
y1<- 2*k+3*k+7*k
y2<- 1*k+8*k+9*k
y3<- 6*k+5*k+4*k


#Punto 1
k

#Punto 2 Pr(X=X1)=x1  Attenz. inserite il valore che avete voi(x1 o x2 o x3)
x3

#Punto 3 Pr(Y=Y1)=y1  Attenz. inserite il valore che avete voi(y1 o y2 o y3)
y3

#Punto 4
E<- X1*x1+X2*x2+X3*x3
E

#Punto 5
E_y<- Y1*y1 + Y2*y2 + Y3*y3
V_y<- (Y1^2*y1 + Y2^2*y2 + Y3^2*y3)-(E_y^2)
V_y