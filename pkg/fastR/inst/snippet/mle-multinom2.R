loglik <- function(theta,x) { 
    probs <- c(theta, 1-sum(theta));   probs <- abs(probs)
    dmultinom(x,size=100,prob=probs, log=T) 
    }
result <- nlmax(loglik,p=rep(0.25,3),x=c(10,20,30,40)); summary(result)
mle <- result$estimate; mle
round(mle,6)
