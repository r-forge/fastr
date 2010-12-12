sim <- function(n,shape1=2,shape2=5) {
    x <- rbeta(n,shape1,shape2)
    x.bar <- mean (x)
    v <- var(x) * (n-1) / n
    R <- 1/x.bar - 1

    f <- function(a){
        R * a^2 / ( (a/x.bar)^2 * (a/x.bar + 1) ) - v
    }

    # can't start at 0 because a=0 makes f undefined
    u <- uniroot(f,c(0.1,100))
    return(c(shape1=u$root,shape2=u$root/x.bar - u$root))
    }

results<-as.data.frame(t(replicate(100,sim(50,2,5))))
stem(results$shape1)
stem(results$shape2)
