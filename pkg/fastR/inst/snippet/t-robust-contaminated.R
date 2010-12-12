# function to randomly sample from a contaminated normal 
rmix <- function(n) {
    x <- rnorm(n,200,10)
    y <- rnorm(n,200,50)
    u <- rbinom(n,1,0.9)                            # 90% 1; 10% 0
    return( (x * u) + (y * (1-u)) )                 # 90% x; 10% y
    }

x <- rmix(10); x
t.test(x)$conf.int

# an example CI from a sample of size 20
t.test(rmix(20))$conf.int           
# 10,000 simulated samples of size 20
CIsim(n=20, samples=10000, estimand=200, rdist=rmix) 
#
# an example CI from a sample of size 5
t.test(rmix(5))$conf.int           
# 10,000 simulated samples of size 5
CIsim(n=5, samples=10000, estimand=200, rdist=rmix) 
#
# an example CI from a sample of size 20
t.test(rmix(2))$conf.int           
# 10,000 simulated samples of size 2
CIsim(n=2, samples=10000, estimand=200, rdist=rmix) 
