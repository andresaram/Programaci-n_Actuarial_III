i <- 5                                          #Valor en el intervalo
c <- 1                                          #Contador
v <- vector("numeric", 0)                       #Vector numérico
while(i>=3 && i<=10){                           #Ciclo while
    length(v) <- length(v)+1                    #Cambio de longitud del vector
    v[c] <- (i) 
    moneda <- rbinom(1,1,0.5)                   #Variable Aleatoria
    if(moneda==1){                              #Validación
        i <- i + 1
        v[c] <- i
    }else{
        i <- i - 1
        v[c] <- i
    }
    c <- c + 1
    if(c== 100000) break                        #Segunda validación
}
print(v)                                        #Imprimiendo vector
    
plot(v)                                         #Gráficando