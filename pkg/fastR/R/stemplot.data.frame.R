stemplot.data.frame <-
function (data, ...) 
{
    doIt <- which(sapply(data, is.numeric))
    for (column in doIt) {
        cat(paste(rep("-", 25), sep = ""))
        cat(paste("\n", "Stemplot of ", names(data)[column], 
            "\n\n", sep = ""))
        print(stemplot.numeric(data[, column], ...))
    }
}
