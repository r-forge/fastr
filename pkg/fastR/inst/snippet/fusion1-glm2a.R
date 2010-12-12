f1.glm2 <- 
    glm( factor(t2d) ~ sex + Gdose, fusion1m, family=binomial )
f1.glm2
###hop:3-9
summary(f1.glm2)
