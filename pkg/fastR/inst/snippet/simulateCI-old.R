ci <- function(x, sd=100,conf.level=0.95) { 
    alpha = 1 - conf.level
    xbar = mean(x) 
    n = length(x)
    zstar <- - qnorm(alpha/2)
    interval <- xbar  + c(-1,1) * zstar * sd / sqrt(n)
    return(interval)
    }

simulatedCoverage <- 
    function(rdist=rnorm,       # function to draw samples
        mu=0,                   # true mean of population
        sd=1 ,                  # true sd of population
        sampleSize=50,          # size of each sample
        conf.level=0.95,        # confidence level
        reps=10000)             # number of reps in simulation
{
    # repeatedly generate random sample and compute CI from it.
    results <- replicate(reps,ci(rdist(sampleSize),sd=sd,conf.level=conf.level))
    # check whether CI covers true value and compute coverage rate
    good <- (results[1,] <= mu) & (results[2,] >= mu)  
    mean(good)
}

# sample size 20
ci(rnorm(20,500,100))                                # an example CI
simulatedCoverage(                                   # simulation
    rdist = function(n){rnorm(n,500,100)},
    mu=500,sd=100,sampleSize=20)

# sample size 5
ci(rnorm(5,500,100))                                 # an example CI
simulatedCoverage(                                   # simulation
    rdist = function(n){rnorm(n,500,100)},
    mu=500,sd=100,sampleSize=5)

# sample size = 2
ci(rnorm(2,500,100))                                  # an example CI
simulatedCoverage(                                    # simulation
    rdist = function(n){rnorm(n,500,100)},
    mu=500,sd=100,sampleSize=2)
