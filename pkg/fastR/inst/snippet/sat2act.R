model1 <- lm(act ~ satm + satv,gpa)
model2 <- lm(act ~ I(satm + satv),gpa)
summary(model1)
summary(model2)
