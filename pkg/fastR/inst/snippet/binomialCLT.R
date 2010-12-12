p <- ppoints(50);

n <- rep(c(10,40,80,800),each=length(p))
p <- rep(p,times=4)

pi <- rep(c(0.5,0.3,0.1,0.05), each=length(p))
p <- rep(p, times=4)
n <- rep(n, times=4)

binomplot <- xyplot(
        qbinom(p,n,pi) ~ qnorm(p,n*pi,sqrt(n*pi*(1-pi))) |
        paste("n=",n,sep="") * paste("pi=",pi,sep=""),
        scales=list(relation='free'),
        cex=0.6,
    ylab=expression(qbinom(p,n,pi)),
    xlab=expression(qnorm(p,n*pi,sqrt(n*pi*(1-pi)))),
    panel = function(x,y,...){
        panel.abline(0,1,...);
        panel.xyplot(x,y,...);
    })

printPlot(binomplot,height=10,width=8,file="binomialCLT")

histplot <- xyplot(dbinom(0:20,20,0.1)~0:20,type='h',xlim=c(0,10),
            lwd=2,
            xlab=expression(x),
            main="Binomial vs Normal (n=20, pi=0.10)",
            ylab="density",
            panel=function(x,y,...){
                panel.xyplot(x,y,col='black', ...);
                panel.mathdensity(dnorm,
                                  list(mean=2,sd=sqrt(0.1*0.9*20)),...);
            })

printPlot(histplot,size='medium',file="binomial-normal-hist")

