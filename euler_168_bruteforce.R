
rr <- function(n) {
     vec1 <- 10 ^ (nchar(n):1)
     vec2 <- vec1 / 10
     x <- (n %% vec1) %/% vec2
     return(as.numeric(paste(c(x[length(x)], x[-length(x)]), collapse = "")))
}

m   <- 2
beg <- 11
end <- 10 ^ m - 1
vec <- vector()

for (i in beg:end) {
     if (rr(i) %% i == 0) {
          vec[i - 10] <- i
     }
}

vec <- vec[!is.na(vec)]
vec

# str <- as.character(sum(vec))
# str <- substr(str, nchar(str) - 4, nchar(str))
# str <- as.numeric(str)
# cat(str)
