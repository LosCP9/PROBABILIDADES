#POISSON
#Contabilizaremos el número de llamadas telefonicas en 1 hora, siendo lambda el número de llamadas

#Asignamos el valor de 20 a lambda
lamda=20

#Observaremos las distintas probabilidades apartir de la funcion dpois
for (i in 0:50) cat(i,"\t",dpois(i,lamda),"\n") #el bucle for indica el número mínimo de interacciones, la función cat es para visualizar las probs.

#Dibujaremos una matriz de graficos de 1x2
par(mfrow=c(1,2))

#colocaremos los datos en un grafico
plot(dpois(0:50,lamda),xlab="Llamadas realizadas",type="h") #xlab etiqueta al eje x,type="h" dibuja con lineas verticales

#Observaremos las distintas probabilidades apartir de la funcion acumulada ppois
for (i in 0:50) cat(i,"\t",ppois(i,lamda),"\n")
plot(ppois(0:50,lamda),xlab="Llamadas realizadas",type="h")
