plot1 <- pdfplot(f,xlim=c(-0.03,1.3), ylim=c(-0.1,3.5),
    xlab="x", ylab=expression(f(x)), 
    scales=list(axs='i'))
printPlot(plot1, file="pdf-example01", size="mediumTall")
