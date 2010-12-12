dat <- expand.grid(
	alpha=seq(4,210,by=6),   # 6
	beta=seq(10,500,by=15)   # 15
	)

dat$loglik <- apply(cbind(dat$alpha,dat$beta),1, FUN="loglik",x=ba)

plot.wire <- 
  wireframe(exp(loglik)~alpha*beta, dat, 
	col='gray25',
	par.settings = list (box.3d=list(col='transparent')),
    shade=F, 
    light.source = c(25,50,50),
    aspect=c(1,.4),
    screen=list(z=20,x=-75),
    xlab=expression(alpha),
    ylab=expression(beta),
    zlab="",
    scale=list(arrows=F,z=list(draw=F)),
    )
