data(ChickWeight); names(ChickWeight);
table(ChickWeight$Chick);
aggregate(ChickWeight$Time,
            by=list(Chick=ChickWeight$Chick,Diet=ChickWeight$Diet),
            FUN=length);
summary(Time~Chick,data=ChickWeight,fun=max);
summary(Time~Chick+Diet,data=ChickWeight,fun=length);
