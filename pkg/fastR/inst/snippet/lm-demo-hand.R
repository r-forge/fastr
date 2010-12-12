one <- rep(1,4)
one <- as.matrix(one); one
x <- as.matrix(x);x
X <- cbind(one,x); X
y <- as.matrix(y); y
v0 <- as.matrix(rep(1,4)); v0
u0 <- v0/sqrt(sum(v0^2));  u0
v1 <- x - mean(x); v1
u1 <- v1/sqrt(sum(v1^2)); u1
H <- u0 %*% t(u0) + u1 %*% t(u1)
H
H %*% y
