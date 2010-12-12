x <- c(4,5,6)
v1 <- c(1,0,0)
v2 <- c(1,1,1)
v3 <- c(1,2,3)
w1 <- v1 - project(v1,v2) - project(v1,v3)
w2 <- v2 - project(v2,v1) - project(v2,v3)
w3 <- v3 - project(v3,v1) - project(v3,v2)
a1 <- project(x,w1,type='l') / vlength(w1); a1
a2 <- project(x,w2,type='l') / vlength(w2); a2
a3 <- project(x,w3,type='l') / vlength(w3); a3
a1 * v1 + a2 * v2 + a3 + v3  # should equal x
