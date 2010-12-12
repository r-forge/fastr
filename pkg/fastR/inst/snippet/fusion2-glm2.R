f2.glm2 <- 
    glm( factor(t2d) ~ Tdose + sex, fusion2m, family=binomial )
f2.glm2
###hop:3-9
summary(f2.glm2)
