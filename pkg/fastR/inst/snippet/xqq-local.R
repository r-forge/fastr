# qqmath with some extra features
xqqmath.local <- function(x,...,lcol="gray70",pch=16,
    slope=sd(x), intercept=mean(x),
    lwd=2,
    mathline = FALSE,     # add line using panel.qqmathline
    idline = FALSE,       # add line y=x
    fitline = FALSE,      # add fitted line using slope and intercept
    lty=1)
    {
    lty <- rep(lty,length=3)
    qqmath(x,
        prepanel=prepanel.qqmathline,
        pch=pch,
        xlab="theoretical quantiles",
        ylab="empirical quantiles",
        panel=function(x,...){
            if (idline) { 
                panel.abline(0,1,col=lcol,lty=lty[3],lwd=lwd) 
            }
            if (fitline) { 
                panel.abline(intercept,slope,col=lcol,lty=lty[2],lwd=lwd) 
            }
            if (mathline) { 
                panel.qqmathline(x,col=lcol,lty=lty[1],lwd=lwd,...)
            }
            panel.qqmath(x,...) 
        },
        ...)
}
