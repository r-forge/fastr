plotA <- wireframe(loglik~alpha*beta, dat, 
    shade=F, 
    drape=T,
	col='gray25',
    light.source = c(25,50,50),
    aspect=c(2,1),
#    screen=list(z=60,x=-75),
    screen=list(z=-30,x=-75),
    scale=list(arrows=F,z=list(draw=F)),
    zlab="",
    xlab=expression(alpha),
    ylab=expression(beta),
    zlim=c(-50,50)
    )
