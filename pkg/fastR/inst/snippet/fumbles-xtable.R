require(xtable)
m <- max(fumbles$week1)
xtable(table(factor(fumbles$week1,levels=0:m)))
xtable(
	signif(
		cbind(
			  fumbles=0:m,
			  observedCount=table(factor(fumbles$week1,levels=0:m)),
			  modelCount= 120* dpois(0:m,mean(fumbles$week1)),
			  observedPct=table(factor(fumbles$week1,levels=0:m))/120,
			  modelPct= dpois(0:m,mean(fumbles$week1))
		)
	,4)
)
