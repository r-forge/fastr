x=1:4; y=c(2,3,5,6)
model <- lm(y~x); model
coef(model)           # the coefficients
fitted(model)         # y-hat values
x=1:4; y=c(2,3,5,6)
###hop:3-9
summary(model)        
