# freq <- c(8,24,27,20,17,10,3,1)
# fumbles <- 0:7
# 
# fumbleCounts=rep(fumbles,freq)
# 
# fumbles=data.frame(
#     fumbles = 0:7,
#     data.count = as.vector(table(fumbleCounts)),
#     data.freq=as.vector(table(fumbleCounts)/length(fumbleCounts)),
#     model.freq=dpois(0:7,mean(fumbleCounts))
#     )

###sink:show-poisson
