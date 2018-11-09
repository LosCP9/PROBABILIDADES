#TEOREMA CENTRAL DEL LIMITE

#Aproximación de D,Normal y D.Binomial
#Aproximación eficaz si "np > 10"
#Asignaremos a los parametros n(número de intentos) p(probabilidad) 
n=40
p=0.4

#Generaremos los valores desde el 0 hasta el 40
x=seq(0,40,by=1) #by=1 indica que la secuencia aumentara de 1 en 1

#Generaremos un grafico donde se indicaran los los valores de dbinom
plot(x,dbinom(x,40,0.4),pch=2,col=2) #El pch se dibuja un simbolo esecificado(2),col indica el color especificado(2)

#Aproximando dbinom(x,n,p) y dnorm(x,np,sqrt(npq)),q=1-p
np=40*0.4
u=sqrt(40*0.4*0.6) #u=sqrt(npq)

#Generamos el grafico formado por una linea continua con los datos obtenidos
lines(x,dnorm(x,16,3.0983))

#Indicaremos la comparación de valores de dbinom y dnorm 
for (i in 0:40) cat(i,"\t",dbinom(i,40,0.4),"\t",
                      dnorm(i,16,3.0983),"\n")


#Aproximación de D,Normal y D.Poisson
#Aproximación es eficaz si "lambda>5"
#Asignaremos un valor a lamda
lamda=20
x=seq(0,40,by=1)

#Generaremos un grafico donde se indicaran los los valores de dpois
plot(x,dpois(x,20),pch=2,col=2)

#Aproximando dpoi(x,lamda) y dnorm(x,lamda,sqrt(lambda))
v=sqrt(40) #v=sqrt(lambda)
lines(x,dnorm(x,20,4.4721))

#Indicaremos la comparación de valores de dpois y dnorm 
for (i in 0:40) cat(i,"\t",dpois(i,20),"\t",dnorm(i,20,4.4721),"\n")