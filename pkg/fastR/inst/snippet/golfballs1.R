golfballs <- c(137, 138, 107, 104)

stat1 <- function(x) { max(x) - min(x) }

rgolfballs <- rmultinom(n=10000,size=486,prob=rep(0.25,4))
plot1 <- statTally(golfballs, rgolfballs, stat1, 
             xlab="test statistic (range)")
