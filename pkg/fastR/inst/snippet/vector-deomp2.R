v1 <- c(1,0,0)
v2 <- c(1,1,1)
v3 <- c(1,2,3)
x <- c(2,7,3)
vdecompose(x,v1,v2)
a1 <- vdecompose(x,v1,v2)$alpha
b1 <- vdecompose(x,v1,v2)$beta
x1 <- a1 * v1 + b1 * v2; x1
# now decompose x into x1 and v3 directions
vdecompose(x,x1,v3)
a2 <- vdecompose(x,x1,v3)$alpha
b2 <- vdecompose(x,x1,v3)$beta
# this should equal x
a2 * (a1 * v1 + b1* v2) + b2 * v3 
# the three coefficients
c( a2 * a1, a2 * b1, b2)
