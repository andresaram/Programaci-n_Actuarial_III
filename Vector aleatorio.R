i <- 5                                          #Valor en el intervalo
c <- 1                                          #Contador
v <- vector("numeric", 0)                       #Vector num�rico
while(i>=3 && i<=10){                           #Ciclo while
    length(v) <- length(v)+1                    #Cambio de longitud del vector
    v[c] <- (i) 
    moneda <- rbinom(1,1,0.5)                   #Variable Aleatoria
    if(moneda==1){                              #Validaci�n
        i <- i + 1
        v[c] <- i
    }else{
        i <- i - 1
        v[c] <- i
    }
    c <- c + 1
    if(c== 100000) break                        #Segunda validaci�n
}
print(v)                                        #Imprimiendo vector
    
plot(v)                                         #Gr�ficando