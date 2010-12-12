h <- dnorm(0,0,3/4) * 1.05
plot1 <- 
    xyplot(c(0,h) ~ c(-3,3), 
        main=expression(paste("Normal pdfs (",mu, "=0)")),
        xlab="",
        ylab="Density",
        key=list(
            text=list(
                c( expression(paste(sigma,"=0.7")),
				   expression(paste(sigma,"=1.0")),
                   expression(paste(sigma,"=1.5"))
                ),
                col="gray30",
                cex=0.7
            ),
            lines=list(
                col=trellis.par.get('superpose.line')$col[c(2,1,3)],
                lty=1,
                lwd=2
                ),
            border=TRUE,
            padding.text=1.5,
            corner=c(1,1),
            x=0.97,y=0.95
            ),
        panel = function(x,y,...) {
            panel.mathdensity(dnorm,args=list(mean=0,sd=1),  n=100,
                col=trellis.par.get('superpose.line')$col[1], lwd=2, lty=1)
            panel.mathdensity(dnorm,args=list(mean=0,sd=0.70),  n=100,
                col=trellis.par.get('superpose.line')$col[2], lwd=2, lty=1)
            panel.mathdensity(dnorm,args=list(mean=0,sd=1.5),  n=100,
                col=trellis.par.get('superpose.line')$col[3], lwd=2, lty=1)
        }
        )
