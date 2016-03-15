KL <-function(x) {
    i <- 5                                          #Valor en el intervalo
    c <- 1                                          #Contador
    v <- vector("numeric", 0)                       #Vector numérico
    for(u in 1:x) {                           #Ciclo while
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
    v                                        #Imprimiendo vector
    
    plot(v, type ="l",lwd=1)                                         #Gráficando
}
