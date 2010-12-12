plot1 <- xhistogram(~time,
    n=10,
    density=T, dmath=dexp,
    args=list(rate=lambda.hat)
    )
breaks = seq(0,12,by=2)^2
plot2 <- xhistogram(~time,
    n=10,
    breaks=breaks,
    density=T, dmath=dexp,
    args=list(rate=lambda.hat)
    )
