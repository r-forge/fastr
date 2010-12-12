base.lms <- lm(B1930 ~ Treatment, ice, subset=Location=='surface')
anova(base.lms)
base.lmi<- lm(B1930 ~ Treatment, ice, subset=Location=='intramuscular')
anova(base.lmi)
