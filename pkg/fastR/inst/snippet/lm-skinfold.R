skin <- skinfold                 # give data.frame a shorter name
skin.model1 <- lm(density~skin,data=skin)
skin.model2 <- lm(density~log(skin),data=skin)
summary(skin.model1)
summary(skin.model2)
