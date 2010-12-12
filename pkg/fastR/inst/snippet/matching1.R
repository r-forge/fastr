rescale <- function(x,lim=c(0,10)) {
    return ( min(lim) + (x - min(x)) /
           (diff(range(x))) * (diff(range(lim))) )
}


n <- 400

a <- qnorm(ppoints(n))
a <- rescale(a)

b <- qexp(ppoints(n),2)
b <- qbeta(ppoints(n),3,15)
b <- rescale(b)

c <- qbeta(ppoints(n),20,5)
c <- rescale(c)

d <- c(runif(n=n/2, min=0,max=10), qunif(ppoints(n/2),0,10) )

d <- rescale(d)

# bowl shaped
e <- 10 * c(rbeta(500,6,1),rbeta(500,1,6))
e <- c( qbeta(ppoints(100),6,1), qbeta(ppoints(100),1,6) )
e <- rescale(e)
#e <- 5 + e - mean(e)

f <- c(0,1,qbeta(ppoints(n-2),12,15))
f <- rescale(f)
#f <- 5 + f - mean(f)

y <- data.frame(A=a,B=b,C=c,D=d,E=e,F=f)

x <- stack(y)

z <- data.frame(W=a,Z=b,V=c,Y=d,U=e,X=f)

#z$W <- y$A
#z$Z <- y$B
#z$V <- y$C
#z$Y <- y$D
#z$U <- y$E
#z$X <- y$F

z <- stack(z)

h <- histogram(~values|ind, data=x, xlab="",as.table=T,
    breaks=seq(-1,11,by=0.75),
    scales=list(alternating=FALSE,y=list(draw=F))
    )

levels(z$ind) <- rev(levels(z$ind))
bw <- bwplot(ind~values, data=z, range=2.25, coef=0, xlab="", 
        ylab="",as.table=T)

