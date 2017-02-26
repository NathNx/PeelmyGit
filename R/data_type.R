#### @ DESCRIPTION @ ####
# 
# R - Object/Variable & Data Type
# by NattN 
# Feb 25, 2017
# https://www.peelmyonions.com
# peelmyonions.natt@gmail.com
#
###


#### Assign New Variable/Object ####

## Try type the following code in R console and see what's happend.

# assign value to an A
A <- 1

# see A's value
A
print(A)

# assign value to a B
B <- -10

# see A's value
B
print(B)

# assign value to a C
C = 300

# see C's value
C
print(C)

# overwrite A’s value with B’s value
A <- B

A

# remove all three variables from current environment
rm(A)
rm(B)
rm(C)

A
B
C


#### Atomic ####

# create dummy atomic
A <- 2017
B <- 'My name is Py'
C <- 20L
D <- "Z"

# how atomic looks like
A
B
C
D




#### Vector ####

# create dummy vector
vec_1 <- c(1,3,-5,7,-9)
vec_2 <- 1:100
vec_3 <- c("A", 'B', "C", "D")

# how vector looks like
vec_1
vec_2
vec_3





#### Matrix ####

# create matrix 3x3
matrixA <- matrix(c(1,5,2,9,7,7,3,5,7), nrow = 3, ncol = 3)


# create matrix by combining three vectors
v1 <- 1:10
v2 <- 90:81
v3 <- 100:109

matrixB <- cbind(v1,v2,v3)


# how matrix looks like
matrixA

matrixB





#### Array ####

# create data vector
data1 <-  c(187,321,431,211)
data2 <- c(100,587,498,967,3567,4030,3888,3021,8765,9999,7867,8799)
data3 <- seq(4560, 7650, length.out = 16) # seq for generate sequence of number
data4 <- ceiling(seq(14640, 25600, length.out = 16)) #ceiling for roundup number

myarray <- array(c(data1,data2, data3, data4), 
                 dim = c(4,4,3),
                 dimnames = list(c("Q1", "Q2", "Q3", "Q4"),
                                 c("Sale1", "Sale2", "Sale3", "Sale4"),
                                 c(2015, 2016, 2017)))

# how array looks like
myarray





#### Data Frame ####

# create data vectors
c1 <- 1:10
c2 <- rep(c("Red", "Blue", 'Green', "Yellow", 'Purple'), 2)
c3 <- abs(rnorm(10)) # abs for absolute, rnorm for ramdon number
c4 <- rep("Shade", 10) # rep for replicate number
c5 <- rep(c(0,1), 5)

# combine above vectors as data frame
ColorData <- data.frame(ID = c1,
                        Name = c2,
                        Weight = c3,
                        Type = c4,
                        Class = c5,
                        Role = rep(c("root", 'user')),
                        Token = (c1*rnorm(1))) # Token will be calculated column

# how data frame looks like
ColorData

View(ColorData)





#### List ####

# check what we have in our environment (obj/var name)
ls()

# combine all object we have into list
final.list <- list(A, B, C, D,
                   v1, v2, v3,
                   vec_1, vec_2, vec_3,
                   c1, c2, c3, c4, c5,
                   matrixA, matrixB,
                   data1, data2, data3, data4,
                   ColorData)

# how list looks like
final.list


