f2.glm0 <- glm( factor(t2d) ~ 1, fusion2m, family=binomial)
deviance(f2.glm0)
deviance(f2.glm1)
df2 <- df.residual(f2.glm0) - df.residual(f2.glm1); df2
1 - pchisq(deviance(f2.glm0) - deviance(f2.glm1), df=df2)
