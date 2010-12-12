dat <- expand.grid(
	alpha=seq(4,325,by=1),
	beta=seq(10,800,by=2)
	)

dat$loglik <- apply(cbind(dat$alpha,dat$beta),1, FUN="loglik",x=ba)
plot.level <- 
  levelplot( loglik ~ alpha + beta, dat,
  xlab=expression(alpha),
  ylab=expression(beta),
  main="log-likelihood",
  )
