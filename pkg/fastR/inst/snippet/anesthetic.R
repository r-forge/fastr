require(faraway); data(anesthetic)
an.model1 <- glm(move~conc, family=binomial, data=anesthetic)
an.model2 <- glm(move~log(conc), family=binomial, data=anesthetic)
