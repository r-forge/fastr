xqqmath <-
function (x, ..., lcol = trellis.par.get("add.line")$col) 
{
    qqmath(x, prepanel = prepanel.qqmathline, panel = function(x, 
        ...) {
        panel.qqmath(x, ...)
        panel.qqmathline(x, col = lcol, ...)
    }, ...)
}
