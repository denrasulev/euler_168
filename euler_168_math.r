# L, s = 100, 0
#
# for i in xrange(1, L):
#      q = pow(10, i+1) - 1
#      for j in xrange(1, 10):
#           z = j*q
#           for k in xrange(9, 99, 10):
#                if j>k//10 and z%k==0: s+= z//k
#
#                print "Last 5 digits of the sum of numbers with"
#                print "an unusual property", s % 100000

s <- 0
m <- 15
for (i in 2:m) {
     n <- 10 ^ i - 1
     for (j in 1:9) {
          z <- j * n
          for (k in seq(9,99,10)) {
               if (j > k %/% 10 & z %% k == 0) {
                    s <- s + z %/% k
               }
          }
     }
}
cat(s %% 100000)
