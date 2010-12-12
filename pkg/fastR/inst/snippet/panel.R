	panel.xqqmath <- function(x,distribution=qnorm,...) {
		y <- distribution(ppoints(length(x)))
		panel.xyplot(sort(x),y,...)
		panel.abline(a=0,b=1,           # line y = 0 + 1*x
			lwd=2, alpha=0.6, col='blue' # some favorite settings, 
										 # could make these arguments
		)  
	}
}

