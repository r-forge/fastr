set.seed(123)
iris.sample <- iris[sample(1:(dim(iris)[1]),15), ]
p <- parallel(~ iris.sample[1:4] | Species, data=iris.sample)
print(p)
