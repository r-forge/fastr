grid.x <- rep(seq(4,200,by=4),times=50)
grid.y <- rep(seq(10,500,by=10),each=50)
grid.z <- apply(cbind(grid.x,grid.y),1, FUN="loglik",x=ba)
dat <- data.frame(
    alpha=grid.x,
    beta=grid.y,
    loglik = grid.z
    )
plotA <- wireframe(loglik~alpha*beta, dat, 
    shade=F, 
    drap=T,
    light.source = c(25,50,50),
    aspect=c(2,1),
    screen=list(z=60,x=-75),
    scale=list(arrows=F,z=list(draw=F)),
    zlab="",
    xlab=expression(alpha),
    ylab=expression(beta),
    zlim=c(-50,50)
    )

plotB <- wireframe(exp(loglik)~alpha*beta, dat, 
    shade=T, 
    light.source = c(25,50,50),
    aspect=c(2,1),
    screen=list(z=60,x=-75),
    xlab=expression(alpha),
    ylab=expression(beta),
    zlab="",
    scale=list(arrows=F,z=list(draw=F)),
    )
