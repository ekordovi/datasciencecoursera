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