p <- qqmath(~x | group, data=someData, distribution=qunif,
    panel=function(x,...) {
        panel.qqmath(x,...)
        panel.abline(0,1)
    })
print(p)

p <- qqmath(~-log10(x) | group, data=someData, distribution=qlogunif,
    panel=function(x,...) {
        panel.qqmath(x,...)
        panel.abline(0,1,col='red',lwd=2,alpha=0.6)
    })
print(p)
