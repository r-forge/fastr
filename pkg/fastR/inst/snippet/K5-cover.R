K5 <- function(x,...) { dnorm(x,sd=sqrt(1/6),...) }
kdePlot5 <- kdeplot(x,K5,xlim=c(1,11),ylim=c(0,0.35),n=500,
    main="")
