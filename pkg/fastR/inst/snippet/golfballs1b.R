stat2 <- function(x) { sum(abs(x-486/4)) }
plot2 <- statTally(golfballs, rgolfballs, stat2, xlab="test statistic (range)")
