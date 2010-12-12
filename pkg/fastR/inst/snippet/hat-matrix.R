one <- rep(1,4); dim(one) <- c(4,1); one
x <- 1:4; dim(x) <- c(4,1); x
X <- cbind(one,x); X
y <- c(2,3,5,6); dim(y) <- c(4,1); y
u0 <- uvec(1,n=4,unitize=T); dim(u0) <- c(4,1); u0
v1 <- x - mean(x); dim(v1) <- c(4,1); v1
t(v1)
t(v1) %*% v1
l <- sqrt(sum(v1^2))
u1 <- v1 / l; u1
H1 <- u0 %*% t(u0) +  u1 %*% t(u1); H1
H1 %*% y
lm(y~x)$fit
