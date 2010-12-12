loglik <- function(theta,x) { 
    probs <- theta
    if (any (probs < 0)) {return(Inf)}
    return( dmultinom(x,size=100,prob=probs, log=T) )
    }
nlmax(loglik,p=rep(0.25,4),x=c(10,20,30,40))$estimate -> mle; mle
round(mle,6)
