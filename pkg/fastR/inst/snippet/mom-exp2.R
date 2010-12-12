plot1 <- histogram(~time,n=10,ylim=c(0,0.025),xlim=c(0,125), type='density',
    panel = function(x,...) {
        panel.histogram(x,...)
        panel.smoothfun(function(x){ dexp(x,lambda.hat)},x,
            cex=0.25,lo=0,hi=150,type='l')
        }
    )
breaks = seq(0,12,by=2)^2
plot2 <- histogram(~time, ylim=c(0,0.025),xlim=c(0,125), type='density',
    breaks=breaks,
    panel = function(x,...) {
        panel.histogram(x, ...)
        panel.smoothfun(function(x){ dexp(x,lambda.hat)},x,
                cex=0.25,lo=0,hi=150,type='l')
        }
    )
