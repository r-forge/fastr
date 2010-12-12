airp.model2 <- lm(pollution~location,airpollution,
        contrasts=list(location="contr.sum"))
###hop:3-9
summary(airp.model2)
model.matrix(airp.model2)
airp.model3 <- lm(pollution~location,airpollution,
        contrasts=list(location="contr.helmert"))
###hop:3-9
summary(airp.model3)
model.matrix(airp.model3)
