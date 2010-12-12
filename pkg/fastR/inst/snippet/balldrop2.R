ball.model2 <- lm(time~sqrt(height),balldrop)
ball.plot2 <- xyplot(time~sqrt(height),balldrop,type=c('p','r'),
                main='with intercept')
ball.plot2a <- xyplot(time~height,balldrop,
                panel=panel.lm,model=ball.model2,
                main='with intercept')
###hop:3-9
summary(ball.model2)
