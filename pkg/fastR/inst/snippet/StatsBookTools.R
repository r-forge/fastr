
blackAndWhite = TRUE
require(fastR)
require(lattice)
fastRlty = rep(1,20)
fastRlty = c(1,2,5,6,1,2,5,6,1,2,5,6)
trellis.par.set(theme=col.whitebg())
trellis.par.set(theme=col.fastR(bw=blackAndWhite),lty=fastRlty)
options(width=75)
options(str = strOptions(strict.width = "wrap"))
options(show.signif.stars=FALSE)
options(digits=5)

hImageScale=.75
vImageScale=.75
#hImageScale=.55
#vImageScale=.55

###sink:printOnGrid
printOnGrid <- function(plots,nrows=1,ncols=1){
	#plots <- as.list(plots)
	n <- length(plots)
	xx <- (0:ncols)/ncols
	yy <- (nrows:0)/nrows
	llx <- rep(xx[1:ncols],times=nrows)
	urx <- rep(xx[-1],times=nrows)
	ury <- rep(yy[1:nrows],each=ncols)
	lly <- rep(yy[-1],each=ncols)

	for (i in 1:n) {
		more <- (i != n) && (i %% (nrows*ncols) != 0)
		print(plots[[i]],position=c(llx[i],lly[i],urx[i],ury[i]),more=more)
	}
	invisible()
}
###unsink



###sink:printPDF
printPDF <- function(expression, file="foo",size,
            width=8, height=5, adjWidth=1, adjHeight=1,
			pdf=TRUE, eps=FALSE,...) {

    if (! missing(size) ) {
        if (size == "small") {
            height = 2.5; width = 4
        }
        if (size %in% c("shortMedium","mediumShort")) {
            height = 2.0; width = 6
        }
        if (size == "medium") {
            height = 3.5; width = 6
        }
        if (size %in% c("tallMedium","mediumTall")) {
            height = 4.5; width = 6
        }
        if (size == "large") {
            height = 5; width = 8
        }
        if (size %in% c("largeWide","wideLarge")) {
            height = 5; width = 11
        }
        if (size %in% c("largeShort","shortLarge")) {
            height = 2; width = 8
        }
    }
	height = height * adjHeight
	width = width * adjWidth
	height=vImageScale*height
	width=hImageScale*width

    if (pdf) {
        pdf(paste("../tex/images/", file, ".pdf",sep=''),
                width=width, height=height,...)
        trellis.par.set(theme=col.whitebg())
        trellis.par.set(theme=col.fastR(bw=blackAndWhite, lty=fastRlty))
        expression
        dev.off()
    }

    if (eps) {
        postscript(paste("../tex/images/", file, ".eps",sep=''),
                width=width, height=height,...)
        trellis.par.set(theme=col.whitebg())
        trellis.par.set(theme=fastR(bw=blackAndWhite))
        expression
        dev.off()
    }
}
###unsink

###sink:printPlot
printPlot <- function(plot,file="foo",size,
            width=8,height=5, adjHeight=1,adjWidth=1,
			pdf=TRUE,eps=FALSE,
			path="../tex/images/",...) {

    if (! missing(size) ) {
        if (size == "small") {
            height = 2.5; width = 4
        }
        if (size %in% c("shortMedium","mediumShort",'mediumWide','wideMedium')) {
            height = 2.5; width = 6
        }
        if (size == "medium") {
            height = 3.5; width = 6
        }
        if (size %in% c("tallMedium","mediumTall")) {
            height = 4.5; width = 6
        }
        if (size == "large") {
            height = 5; width = 8
        }
        if (size %in% c("largeWide","wideLarge")) {
            height = 5; width = 11
        }
        if (size %in% c("largeShort","shortLarge")) {
            height = 3; width = 8
        }
    }
	height = height * adjHeight
	width = width * adjWidth
	height = vImageScale*height
	width = hImageScale*width

    if(pdf) {
        pdf(paste(path, file, ".pdf",sep=''),
                width=width, height=height)
        trellis.par.set(theme=col.whitebg())
        trellis.par.set(theme=col.fastR(bw=blackAndWhite, lty=fastRlty))
        print(plot,...)
        dev.off()
    }

    if (eps) {
        postscript(paste(path, file, ".eps",sep=''),
                width=width, height=height)
        trellis.par.set(theme=col.whitebg())
        trellis.par.set(theme=col.fastR(bw=blackAndWhite, lty=fastRlty))
        print(plot,...)
        dev.off()
    }
}
###unsink

