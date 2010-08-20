show.poisson <-
function (lambda = 1, range = 0:10) 
{
    l = rep(lambda, length(range))
    x = rep(range, each = length(lambda))
    poisson.data = data.frame(count = x, lambda = l, prob = dpois(x, 
        l))
    result <- barchart(prob ~ count | lambda, poisson.data, horizontal = F, 
        box.ratio = 100)
    print(result)
    return(result)
}
