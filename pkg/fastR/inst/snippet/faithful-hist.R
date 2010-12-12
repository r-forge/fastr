times <- faithful$eruptions
h1 <- histogram(~times,type='density',breaks=seq(1,6,by=0.5))
h2 <- densityplot(~times)
