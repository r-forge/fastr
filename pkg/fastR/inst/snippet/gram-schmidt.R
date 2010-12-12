vlength <- function(x) { sqrt(dot(x,x)) }

onorm <- function (...) {
    dots <- list(...)
    n <- length(dots[[1]])
    l <- length(dots)

    for (i in 1:l) {
        v <- dots[[i]]
        if (length(v) != n) { 
            warning(paste("Incompatible vectors. Ignoring all but ",
                i-1,".\n",sep=""))
            return(result)
            }
        if (i > 1) {
            for (j in 1:(i-1)) {
                v <- v - project(v,result[,j])
            }
        }
        v <- v/vlength(v)
        if (i == 1) { result <- matrix(v,ncol=1) }
        else { result <- cbind(result,v) }
    }

    colnames(result) = paste("u",1:l,sep="")
    return(result)
}
onorm(1:4,rep(1,4))
