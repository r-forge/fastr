golfballs <- c(137, 138, 107, 104)
rdata <- rmultinom(n=10000,size=486,prob=rep(0.25,4))
plot1 <- statTally(golfballs, rdata, max, 
			xlab="test statistic (max)")
##unsink

#golfballs-range is in 05-Likelihood

###sink:mom-norm
