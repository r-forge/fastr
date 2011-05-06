xhistogram <-
function (x, data, ..., type = "density", labels = F, density = FALSE, 
	panel=panel.xhistogram,
    fit = NULL, start = NULL, groups=NULL) 
{
    histogram(x, data, groups, ..., panel = panel, type = type, fit = fit, 
        start = start, labels = labels, density = density)
}
