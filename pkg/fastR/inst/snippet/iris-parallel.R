p <- parallel(~ iris[1:4] | Species, data=iris)
print(p)
