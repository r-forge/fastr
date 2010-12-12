surround <- function(x,pre=" ",post=" ",width=8,...) {
    x <- format(as.vector(x),...)
    l <- length(x)
    format(paste(rep(pre,l),x,rep(post,l),sep=""),width=10,just='centre')
}

row.perc  <- function(x) { x / apply(x,1,sum) }
col.perc  <- function(x) { x / rep(apply(x,2,sum),each=nrow(x)) }

xchisq.test <- function(...) {
    testRes <- chisq.test(...)

    if (is.matrix(testRes$observed)) {
        dd <- dim(testRes$observed)
    } else {
        dd <- c(1,length(testRes$observed))
    }

    obs <- surround(testRes$observed," "," ",digits=2,nsmall=2)
    exp <- surround(testRes$expected,"(",")",digits=2,nsmall=2)
    contrib <- surround(testRes$residuals^2,"[","]",digits=2,nsmall=2)
    resid <- surround(testRes$residuals,"<",">",digits=2,nsmall=2)
    blank <- rep(" ", prod(dd))

    result <- c(obs,exp,contrib,resid,blank)

    dim(result) <- c(dd,5)

    print(testRes)

    for ( i in 1:dd[1] ) { for (j in 1:5) {
            cat ( result[i,,j] )
            cat("\n")
        } }

    cat("key:\n")
    cat("\tobserved\n")
    cat("\t(expected)\n")
    cat("\t[contribution to X-squared]\n")
    cat("\t{residual}\n")
    invisible(testRes)
}

