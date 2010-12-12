easyci <- function(x, n=100,conf.level=0.95) { 
    alpha = 1 - conf.level
    p = x/n
    zstar <- - qnorm(alpha/2)
    interval <- p + c(-1,1) * zstar * sqrt(p * (1-p) / n)
    }
Wilsonci <- function(x, n=100, conf.level=0.95) { 
    alpha = 1 - conf.level
    p = (x+2)/(n+4)
    zstar <- - qnorm(alpha/2)
    interval <- p + c(-1,1) * zstar * sqrt(p * (1-p) / n)
    }

# sample size = 35
results <- replicate(10000,easyci(rbinom(1,35,0.3),n=35)) # simulate 10000x 
good <- (results[1,] <= 0.3) & (results[2,] >= 0.3)      # covers true value?
mean(good)                                               # coverage rate

results<-replicate(10000,Wilsonci(rbinom(1,35,0.3),n=35)) # simulate 10000x 
good <- (results[1,] <= 0.3) & (results[2,] >= 0.3)      # covers true value?
mean(good)                                               # coverage rate

# sample size =100 
results <- replicate(10000,easyci(rbinom(1,100,0.3)))    # simulate 10000x
good <- (results[1,] <= 0.3) & (results[2,] >= 0.3)      # covers true value?
mean(good)                                               # coverage rate

results <- replicate(10000,Wilsonci(rbinom(1,100,0.3)))  # simulate 10000x
good <- (results[1,] <= 0.3) & (results[2,] >= 0.3)      # covers true value?
mean(good)                                               # coverage rate
