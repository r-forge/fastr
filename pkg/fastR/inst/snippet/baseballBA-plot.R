ba.plot <- xyplot(c(0,18) ~ c(0.20,0.40), 
		panel=function(x,y,...){ panel.mathdensity(...) },
		n=100, dmath=dbeta, args=list(shape1=107.3,shape2=257.6),
        ylab="dbeta",
		xlab="x",
        col=trellis.par.get('plot.line')$col,
        lwd=2)
