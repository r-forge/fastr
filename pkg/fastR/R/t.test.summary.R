t.test.summary <-
function (n1, n2, mean1, mean2, sd1, sd2, ...) 
{
    a <- sqrt((n1 - 1) * sd1^2/2)
    b <- sqrt((n2 - 1) * sd2^2/2)
    x <- c(mean1 - a, mean1 + a, rep(mean1, n1 - 2))
    y <- c(mean2 - b, mean2 + b, rep(mean2, n2 - 2))
    print(cbind(sd(x), sd(y)))
    t.test(x, y, ...)
}
