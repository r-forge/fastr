uvec <- function(i,n,unitize=TRUE) {
    u <- rep (1,n)
    if (i > 1) { u[i] = -i + 1
        if (i < n) { u[(i+1):n] = rep(0,n-i) }
    }
    l <- sqrt( u %*% u )
    if (unitize) { u <- u / l }
    return (u)
}
