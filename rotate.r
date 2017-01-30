# rotate function

rr <- function(n) {

     # check if argument has 2 or more digits
     if (nchar(n) < 2) {
          stop("Argument must contain 2 or more digits", call. = FALSE)
     }

     # split argument to individual digits
     vec1 <- 10 ^ (nchar(n):1)
     vec2 <- vec1 / 10
     x <- (n %% vec1) %/% vec2

     # return right-rotated number
     return(as.numeric(paste(c(x[length(x)], x[-length(x)]), collapse = "")))
}
