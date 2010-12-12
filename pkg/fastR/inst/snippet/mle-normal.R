x <- rnorm(20,7.5,2)
loglik <- function(theta,x) {
    sum(dnorm(x,theta[1],abs(theta[2]), log=TRUE))
    }

nlmax(loglik, p=c(1,1), x=x)

nlmax(loglik, p=c(0,1), x=x)
