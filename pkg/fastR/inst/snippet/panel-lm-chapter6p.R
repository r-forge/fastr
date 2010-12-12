panel.lm <- function(x,y,model,fits,...){
    if (missing(fits)) {
        if (missing(model)) {
            stop ("No fitted values or model supplied.")
        } else {
            fits <- fitted(model)
        }
    }
    panel.xyplot(x,fits,type="l",lwd=2,...)
    panel.xyplot(x,y,...)
}
