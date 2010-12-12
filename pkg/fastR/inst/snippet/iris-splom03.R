p <- splom(~iris[1:4]|Species,data=iris,
    pch=16, cex=0.7)
print(p)
printPlot(p,"irisSplom03",width=10,height=10)
