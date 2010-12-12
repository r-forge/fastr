x <- c(2,3,4,6,9,12)
for (i in 1:6) {
    print(uvec(i,6,unitize=F))
    print(uvec(i,6,unitize=T))
    print( uvec(i,6,unitize=T) %*% uvec(i,6,unitize=T))
}

v <- x - mean(x)
print(v)

for (i in 1:6) {
    print(drop(uvec(i,6) %*% x) * uvec(i,6))
    print(drop(uvec(i,6) %*% v) * uvec(i,6))
}

