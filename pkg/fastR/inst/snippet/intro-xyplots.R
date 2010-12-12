plot1 <- histogram(~Sepal.Length|Sepal.Width,data=iris,
        strip=strip.custom(var.name="S.Width"))
plot2 <- histogram(~Sepal.Length|equal.count(Sepal.Width,number=4),
            data=iris, strip=strip.custom(var.name="Sepal.Width"))
plot3 <- xyplot(Sepal.Length~Sepal.Width,data=iris)
plot4 <- xyplot(Sepal.Length~Sepal.Width|Species,data=iris)
plot5 <- xyplot(Sepal.Length~Sepal.Width,groups=Species,data=iris,
			cex=1.3, alpha=.8, auto.key=list(columns=3))

