darts.lm <- lm(Accuracy~Distance*Hand,darts)
anova(darts.lm)
darts.interaction <- xyplot(Accuracy~Distance,groups=Hand,darts,
                type='a',auto.key=list(lines=T,points=F,columns=2))
darts.xy <- xyplot(Accuracy~Distance,groups=Hand,darts,
                auto.key=list(lines=F,points=T,columns=2))
