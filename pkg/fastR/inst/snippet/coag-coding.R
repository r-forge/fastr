coag.model2 <- lm(coag~diet,coagulation,contrasts=list(diet="contr.sum"))
###hop:3-9
summary(coag.model2)
coag.model3 <- lm(coag~diet,coagulation,contrasts=list(diet="contr.helmert"))
###hop:3-9
summary(coag.model3)
