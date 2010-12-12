showFumbles <- function(x,lambda=mean(x),...) {
	mx <- max(x)
    result <- histogram(~x,type="density", xlim=c(-.5,(mx+2.5)),
		xlab='number of fumbles',
        panel=function(x,y,...){
            panel.histogram(x,alpha=0.8,breaks=seq(-0.5,(mx+2.5),by=1,...))
            panel.points(0:(mx+2),dpois(0:(mx+2),lambda),pch=19,alpha=0.8)
        }
    )
    print(result)
    return(result)
}

printPlot(showFumbles(fumbles$week1),file="fumbles",size="medium")
