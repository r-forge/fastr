panel.lmbands <-
function (x, y, interval = "confidence", level = 0.95, model = lm(y ~ 
    x), pred.col = trellis.par.get("superpose.line")$col[1], 
    conf.col = trellis.par.get("superpose.line")$col[2], ...) 
{
    x.to.fit <- seq(min(x), max(x), length = 40)
    confidence <- predict(model, interval = "confidence", newdata = data.frame(x = x.to.fit), 
        level = level)
    prediction <- predict(model, interval = "prediction", newdata = data.frame(x = x.to.fit), 
        level = level)
    panel.xyplot(x, y, ...)
    panel.abline(lm(y ~ x))
    panel.xyplot(x.to.fit, prediction[, 2], type = "l", col = pred.col, 
        lty = 2)
    panel.xyplot(x.to.fit, prediction[, 3], type = "l", col = pred.col, 
        lty = 2)
    panel.xyplot(x.to.fit, confidence[, 2], type = "l", col = conf.col)
    panel.xyplot(x.to.fit, confidence[, 3], type = "l", col = conf.col)
}
