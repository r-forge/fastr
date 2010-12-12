orings.model2 <-                  # link=logit is default, so unnecessary
    glm(cbind(damage,6-damage)~temp,data=orings,family=binomial(link=logit))
summary(orings.model2)
p1 <- predict(orings.model,newdata=data.frame(temp=31),type='response'); p1
p2 <- predict(orings.model2,newdata=data.frame(temp=31),type='response'); p2
dbinom(0,6,prob=p2)               # 0 damaged O-rings
