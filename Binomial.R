#BINOMIAL
#Generaremos valores aleatoriosde una variable de D.Binomial
#Para un tema de control de calidad se debera elegir 100 articulos diarios con una probabilidad "p" de que dicho artículo sea defectuoso

#Asignaremos el valor de "p" y "n"
p=0.4
n=100

#Asignaremos la cantidad de artículos a analizar
num.paq=100

#Aqui generaremos los 100 números aleatorios
bits.err=rbinom(num.paq,n,p)

frec.abs=table(bits.err) # Corresponde a las frecuencias absolutas
frec.rel=frec.abs/num.paq # Corresponde a las frecuencias relativas

#Dibujaremos una matriz de graficos de 2x1
par(mfrow=c(2,1))

#Generaremos una gráfica de barras para los datos aleatorios
barplot(frec.rel,col="lightblue",ylab="Frecuencias
          relativas",main="Diagrama de barras del numero de los artículos defectuosos")

