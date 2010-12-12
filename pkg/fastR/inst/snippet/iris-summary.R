dim(iris)                        # number of rows and columns
head(iris,5)                     # see top of data
iris$Sepal.Length                # get one variable and print as vector
summary(iris)                 
table(iris$Species)               
table(iris$Sepal.Length > 6.0)               
table(cut(iris$Sepal.Length, 0:10))
