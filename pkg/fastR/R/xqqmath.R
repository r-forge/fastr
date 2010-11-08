xqqmath <-
function (x, qqmathline = FALSE, idline = FALSE, fitline = FALSE, 
    slope = sd(x), intercept = mean(x), ..., lcol = trellis.par.get("add.line")$col, 
    pch = 16, lwd = 2, lty = 2) 
{
    lty <- rep(lty, length = 3)
    qqmath(x, prepanel = prepanel.qqmathline, pch = pch, xlab = "theoretical quantiles", 
        ylab = "empirical quantiles", panel = function(x, ...) {
            panel.qqmath(x, ...)
            if (idline) {
                panel.abline(0, 1, col = lcol, lty = lty[3], 
                  lwd = lwd)
            }
            if (fitline) {
                panel.abline(intercept, slope, col = lcol, lty = lty[2], 
                  lwd = lwd)
            }
            if (qqmathline) {
                panel.qqmathline(x, col = lcol, lty = lty[1], 
                  lwd = lwd, ...)
            }
        }, ...)
}
