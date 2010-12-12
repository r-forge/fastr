x1 <- c(1,1,1); x2<-c(1,2,3)
# use x1/|x1| and adjust x2:
p2 <- project(x2,x1); p2       # project x2 along x1
v2 <- x2 - p2; v2              # subtract part of x2 in direction of x1
v2/vlength(v2)                 # unitize
dot(x1,v2)                     # check orthogonality
# or the other way around
p1 <- project(x1,x2); p1       # project x1 along x2
v1 <- x1 - p1; v1              # subtract part of x1 in direction of x2
v1/vlength(v1)                 # unitize
dot(v1,x2)                     # check orthogonality
