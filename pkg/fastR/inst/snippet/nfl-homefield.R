nfl$Home <- data.frame(team=nfl$Home, at.home=1)
nfl$Visitor <- data.frame(team=nfl$Visitor, at.home=0)
nfl.model2 <- update(nfl.model, formula = ~ team + at.home, data=nfl)
# homefield effect
coef(nfl.model2)['at.home']
# homefield effect as odds multiplier
exp(coef(nfl.model2)['at.home'])
# prob that home team wins if teams have equal rating
ilogit(coef(nfl.model2)['at.home'])
