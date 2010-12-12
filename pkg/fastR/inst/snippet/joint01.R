require(cubature)
f <- function(x) { x[1] + x[2] }
adaptIntegrate(f,c(0,0),c(1,1))
g <- function(x) { 
    if (x[1] > x[2]) {return(0)}
    return(f(x))
    }
adaptIntegrate(g,c(0,0),c(1,1))
