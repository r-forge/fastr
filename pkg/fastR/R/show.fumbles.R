show.fumbles <-
function (lambda = mean(fumbleCounts), ...) 
{
    result <- histogram(~fumbleCounts, type = "density", panel = function(x, 
        y, ...) {
        panel.histogram(x, alpha = 0.8, ...)
        panel.points(0:11, dpois(0:11, lambda), col = "lightskyblue3", 
            pch = 19, alpha = 0.8)
    })
    print(result)
    return(result)
}
