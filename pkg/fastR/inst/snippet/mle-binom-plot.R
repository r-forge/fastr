xpts <- seq(0,1,by=0.005)
printPlot(xyplot( llik(xpts) ~ xpts,
			type = 'l',
            lwd=2, # col=trellis.par.get('plot.line')$col,
            xlab=expression(pi),
            ylab="log-likelihood"
			),
    file="mle-binom", 
    size="medium"
    )
