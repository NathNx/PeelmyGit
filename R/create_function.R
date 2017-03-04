#### @ DESCRIPTION @ ####
# 
# R - Function
# by NattN 
# Mar 4, 2017
# https://www.peelmyonions.com
# peelmyonions.natt@gmail.com
#
###


#### How Function Works ####

# let's say I have 3 objects
A <- c(1,3,5,7,9)
B <- 20
C <- 2


# this is how to use function in R

mean(A) # use mean() function to find mean of vector A

length(A) # use length() function to find length of vector A


# try little more
D <- length(A) - B # length of vector A minus B and assign result to D
D

E <- abs(D)^C # get absolute value from D and power it by C
E

# ok, now you know how function works, yes?


#### Create Function ####

# first approch
fn1 <- function (myinput) { myinput * 999 }

# how to use it
fn1(E)
fn1(myinput = E)



# second approch
fn2 <- function (blablabla) { 
	blablabla * 9999
}

# how to use it
fn2(A)
fn2(blablabla = A) # apply function to each element to vector A


# third approch
fn3 <- function (xyz) 
{ 
	xyz^2
}

# how to use it
fn3(B)
fn3(xyz = B)


## let's create something a little bit more complicate

# forth approch
fn4 <- function (input) {

	result1 <- (input - 15)/2

	result2 <- result1 + 10000

	final.result <- result2 * result1


	# it's good to make sure that this function return right object I want since I have 3 of them
	# so I use return() to send out which object I want.
	return(final.result) 


	# you should try without return() and see what would happen :)

}

# give it a try
abc.1 <- fn4(C)
abc.1



## I want 3 objects as output. I would do this.

# fifth approch
fn5 <- function (input) {
  
  result1 <- (input - 15)/2
  
  result2 <- result1 + 10000
  
  final.result <- result2 * result1
  
  
  # I need to document objects I want by using list()
  output.final <- list(final.result,
                       result2,
                       result1)
  
  # now I have 3 objects in my list
  return(output.final)
  
}

# give it a try
abc.2 <- fn5(C)
abc.2



## If I have 2 inputs, what should I do?

# sixth approch
fn6 <- function (input1, input2) {
  
  # just like that
  myoutput <- input1 - input2
  
  return(myoutput)
  
}

# let's get result
res1 <- fn6(20,100)
res1

# get this too.
res2 <- fn6(100,20)
res2

# how about this?
res3 <- fn6(input2 = 100, input1 = 20)
res3

# you see? input sequence is MATTER if you're not specified argument name while you use function :D



## ok, if I want more flexible argument length. I can do this.

# seventh approch
fn7.1 <- function (a,b,c,...) {
  
    # you can parse argument length as much as you want with three dots ellipsis like above
    
  
    # this function can print out 4 objects
    print(a)
    print(b)
    print(c)
    print(...)
  
}

# let's see the output
fn7.1(100, 200, 300, 400)


# what if I add more value
fn7.1(100, 200, 300, 400, 500, 600, 800, 900)

## error!, right? let's modify a bit

fn7.2 <- function (a,b,c,...) {
  
  # I document it with list()
  d <- list(a, b, c, ...)
  
  # this function can print out 4 objects
  print(d)
  
}

# try again...
fn7.2(100, 200, 300, 400, 500, 600, 800, 900)

# check this one
fn7.2(100, 200, a = 300, 400, 500, b = 600, 800, c = 900)

## are you happy now? I hope you say yes :)




## let use input from global environment 

# eighth approch

vec_x <- c(16, 32, 64, 128, 256, 512)

fn8 <- function (k) {
  
  # this function parse only k value. But I can also parse object from global environment to this function.
  m <- vec_x * k
  
  return(m)
  
}

# result
fn8(15)



## you know, we can assign object which create in function environment to global environment!

# ninth approch
fn9 <- function (x, y, z) {
  
  t <- x * 10
  
  # <<- can send object u to global environment
  u <<- t/2
  
  v <- y + z
  
  # and I also can use object u as my input without parsing it from function argument (because it is in global env.)
  d <- u
  
  
  print(d)
  
}

# see output
fn9(2,4,6)

print(u)

## cool, isn't it?


## moreover, I can nest function(s) in a function.

#tenth approch
fn10 <- function (layer1) {
  
  x <- layer1
  
  # create nest function
  fn10.nest <- function(layer2) {
    
    y <- layer2 ^ 2
    
    return(y)
    
  }
  
  # use nest function above
  zzz <- fn10.nest(x)
  
  return(zzz)
  
}

# check output
fn10(10)



## finally, I can use function within function too

#eleventh approch
fn.dummy <- function (q) {
  
  n <- c(q, q, q, q)
  
  return(n)
  
}

fn11 <- function (r) {
  
  s <- mean(r)
  
  p <- fn.dummy(s)
  
  return(p)
  
}

# use vector as input
vec_z <- c(10, 20, 30, 40)

# result
fn11(vec_z)

