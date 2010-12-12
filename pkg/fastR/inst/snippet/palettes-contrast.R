require(multcomp); contr <- mcp(employee=c(1,1,1,-3))
confint(glht(pal.lm1,contr))
confint(glht(pal.lm2,contr))
