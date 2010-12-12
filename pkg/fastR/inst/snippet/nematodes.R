nem.model1 <- lm(Growth~Nematodes,nematodes)
nem.model2 <- lm(Growth~factor(Nematodes),nematodes)
anova(nem.model1)
anova(nem.model2)
