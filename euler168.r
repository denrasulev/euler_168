# f <- file("stdin")
# m <- readLines(f)
# m <- as.numeric(m[1])
# close(f)

unq <- function(n,d,r) {
     right <- r
     carry <- 0
     space <- 0
     place <- 1

     for (i in 1:n) {
          if (place < 10 ^ 5) {
               space <- space + right * place
               place <- place * 10
          }
          digit <- d * right + carry
          right <- digit %% 10
          carry <- digit %/% 10
     }

     left <- d * right + carry
     tmp1 <- right != 0 & left == r
     tmp2 <- ifelse(place < 10 ^ 5, right * place, 0) + space
     return(tmp1 * tmp2)
}

m   <- 2
ans <- 0
beg <- 11
end <- 10 ^ m - 1

for (n in beg:end) {
     for (d in 1:9) {
          for (r in 1:9) {
               ans <- (ans + unq(n,d,r)) %% 10 ^ 5
          }
     }
}

cat(ans)
