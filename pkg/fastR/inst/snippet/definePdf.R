data <- rnorm(40000,10,2.5)
h1 <- histogram(~data,n=10,xlab="",type="density",ylab="",
    scales=list(draw=FALSE))
h2 <- histogram(~data,n=40,xlab="",type="density",ylab="",
    scales=list(draw=FALSE))
h3 <- histogram(~data,n=160,xlab="",type="density",ylab="",
    scales=list(draw=FALSE))
printPlot(h1, file="pdfdef01",size="medium")
trellis.par.set(plot.polygon=list(border=
    trellis.par.get('plot.polygon')$col))
printPlot(h2, file="pdfdef02",size="medium")
printPlot(h3, file="pdfdef03",size="medium")
