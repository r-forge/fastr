f2.glm2 <- 
    glm( factor(t2d) ~ sex + Tdose, fusion2m, family=binomial )
f2.glm2
###hop:3-9
summary(f2.glm2)
