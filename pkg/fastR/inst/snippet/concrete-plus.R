concreteplus <- rbind(concrete, 
                      data.frame(limestone=28,water=0.55,strength=45.6))
concrete.lmplus <- lm(strength ~ limestone + water, concreteplus)
concrete.lmplus
y <- concreteplus$strength
n <- length(y); v0 <- rep(1,n)
v1 <- concreteplus$limestone - mean(concreteplus$limestone)
v2 <- concreteplus$water - mean(concreteplus$water)
project(y,v0,type='v')
mean(y)
project(y,v1,type='l') / vlength(v1)
project(y,v2,type='l') / vlength(v2)
ef0 <- project(y,v0,type='v')
ef1 <- project(y,v1,type='v')
ef2 <- project(y,v2,type='v')
ef0 + ef1 + ef2
predict(concrete.lmplus)
