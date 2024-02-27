add2 <- function(x, y){
        x+y
}
add2(3,5)

# returning subset of vector bigger than 10

above10 <- function(x) {
        use <- x > 10
        x[use]
}

above <- function(x, n) {
      use <- x > n
      x[use]
}

columnmean <- function(y, removeNA = TRUE){
        nc <- ncol(y)
        # empty vector
        means <- numeric(nc)
        for(i in 1:nc){
                means[i] <- mean(y[, i], na.rm = removeNA)
        }
        means
}

