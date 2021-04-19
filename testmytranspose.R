#2020211496 Han,Joo-hyeong
install.packages("testthat")
library(testthat)
source("mytranspose.R")

# if 'expect_equal' is error, it breaks
# expect_equal(expected value, real value)
myvar01 <- matrix(1:10, nrow=5, ncol=2)
expect_equal(myvar01[1,2], mytranspose(myvar01)[2,1])
expect_equal(myvar01[2,1], mytranspose(myvar01)[1,2])
expect_equal(myvar01[3,1], mytranspose(myvar01)[1,3])
expect_equal(myvar01[4,2], mytranspose(myvar01)[2,4])
expect_equal(myvar01[5,2], mytranspose(myvar01)[2,5])

myvar01 <- matrix(NA, nrow=0, ncol=0)
myvar01==mytranspose(myvar01) # 0*0 matrix

myvar01 <- matrix(c(1,2), nrow=1, ncol=2)
expect_equal(myvar01[1], mytranspose(myvar01)[1])
expect_equal(myvar01[2], mytranspose(myvar01)[2])

myvar01 <- matrix(c(1,2), nrow=2, ncol=1)
expect_equal(myvar01[1], mytranspose(myvar01)[1])
expect_equal(myvar01[2], mytranspose(myvar01)[2])

myvar02 <- c(1,2,NA,3)
expect_equal(myvar02[1], mytranspose(myvar02)[1])
expect_equal(myvar02[2], mytranspose(myvar02)[2])
expect_equal(myvar02[3], mytranspose(myvar02)[3])
expect_equal(myvar02[4], mytranspose(myvar02)[4])

myvar02 <- c(NA)
myvar02[1]==mytranspose(myvar02)[1] # logical(0)

myvar02 <- c()
expect_equal(myvar02[1], mytranspose(myvar02)[1])

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE, TRUE, TRUE, FALSE)
mydata3 <- data.frame(d,e,f)

expect_equal(mydata3[1,2], mytranspose(mydata3)[2,1])
mydata3[1,3]==mytranspose(mydata3)[3,1] # TRUE
expect_equal(double(mydata3[2,1]), double(mytranspose(mydata3)[1,2]))
mydata3[2,3]==mytranspose(mydata3)[3,2] # TRUE
expect_equal(double(mydata3[3,1]), double(mytranspose(mydata3)[1,3]))
expect_equal(mydata3[3,2], mytranspose(mydata3)[2,3])
expect_equal(double(mydata3[4,1]), double(mytranspose(mydata3)[1,4]))
expect_equal(mydata3[4,2], mytranspose(mydata3)[2,4])
mydata3[4,3]==mytranspose(mydata3)[3,4] #TRUE

