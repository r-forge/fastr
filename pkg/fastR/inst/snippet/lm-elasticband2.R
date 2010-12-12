require(DAAG); 
eband.model2 <- lm(sqrt(distance)~stretch,data=elasticband); eband.model2
plot2 <- xyplot(sqrt(distance)~stretch,data=elasticband,
            model=eband.model2,panel=panel.lm)
plot3 <- xyplot(distance~stretch,data=elasticband,
            model=eband.model2,panel=panel.lm,fits=fitted(eband.model2)^2)
