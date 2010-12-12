panel.lmbands <- function(x,y,interval="confidence",level=0.95,model=lm(y~x),
...) {
    x.to.fit <- seq(min(x),max(x),length=40)
    predict(model,
        interval='confidence', 
        newdata=data.frame(x=x.to.fit), 
        level=level) -> confidence
    predict(model,
        interval='prediction', 
        newdata=data.frame(x=x.to.fit), 
        level=level) -> prediction
    panel.xyplot(x,y,...)
    panel.abline(lm(y~x))
    #cat(cbind(x=x.to.fit,lwr=prediction[,2],upr=prediction[,3]))
    panel.xyplot(x.to.fit,prediction[,2],type="l",col='red',lty=2)
    panel.xyplot(x.to.fit,prediction[,3],type="l",col='red',lty=2)
    panel.xyplot(x.to.fit,confidence[,2],type="l",col='navy')
    panel.xyplot(x.to.fit,confidence[,3],type="l",col='navy')
}
