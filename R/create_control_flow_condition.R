#### @ DESCRIPTION @ ####
# 
# R - Control Flow with Condition IF, ELSE etc.
# by NattN 
# Mar 31, 2017
# https://www.peelmyonions.com
# peelmyonions.natt@gmail.com
#
###

#### create condition "IF" ####

# create some object

Gate <- "Allow"
StatusA <- "You can pass."
StatusB <- "You are not allowed!"

# let's write only "if"

if (Gate == "Allow") print(StatusA)

# same as above 

if (Gate == "Allow") {print(StatusA)}

# same as above 

if (Gate != "NotAllow")
  print(StatusA)

# same as above

if (Gate != "NotAllow") {
  
  print(StatusA)
  
}

#### create condition "IF then ELSE" ####

# let's write "if" with "else"

if (Gate == "NotAllow") print(StatusA) else print(StatusB)

# same as above

if (Gate != "Allow") {
  
  print(StatusA)
  
}else{
  
  print(StatusB)
  
}

# but this one will error!

if (Gate == "NotAllow") print(StatusA) 
else print(StatusB)

# so you need to use this form 

if (condition) {
  
  #do stuff 1
  
}else{
  
  #do stuff 2
  
}

#### create condition "IFELSE" ####

# create charactor vector 

label <- rep(c("Fail", "Pass"), 5)
print(label)


# ifelse in action
# let's recode it to binary by using ifelse function
label2 <- ifelse(label == "Fail", yes = 0, no = 1)
print(label2)



#### The different between "IF then ELSE" and "IFELSE" ####
a <- 10
b <- c(20, 30, 40, 50, 9)

# the code below shows only 10 from object a 
res1 <- if (a > b) print (b) else print(a)

print(res1)

# ifelse is able to compare atomic with each element in a vector
res2 <- ifelse(a > b, print(b), print(a))

print(res2)



#### create condition "IF with ELSE IF and ELSE" ####

# create object

x <- sample(x = 1:100, size = 1) # randomly generate integer from range 1 to 100
print(x)


if (x <= 20){ #if x is less than or equal to 20
  
  print("condition 1")
  
}else if (x > 50 & x < 90){ #if lies between 51 to 89
  
  print("condition 2")
  
}else if (x >= 90){ #if x is more equal or more to 90
  
  print("condition 3")
  
}else{
  
  print("condition 4") #if x is not fall into any criterion above
  
}


#### create conditional function ####

# let's build basic slot machine

# ** this is NOT the best way to build the machine.
# ** just only for your understanding.

slot.machine <- function (chip) {
  
  # check chip data
  chip.check <- c(5, 10, 15) # a vector
  
  # check chip
  if (any(chip %in% chip.check) == TRUE){ # if at least one value in a vector is TRUE (a.k.a. summaryize to single logical), %in% means get x if it exists in y
    
    # create reel data
    reel.data <- c("Cherry", "Banana", "Grape", "Joker", "7")
    reel.prob <- c(0.9, 0.7, 0.6, 0.3, 0.1)

    # left reel
    reel.res1 <- 1 - ((sample(x = chip:100, size = 1)) / 100) # formula
    ans1 <- which(abs(reel.prob-reel.res1) == min(abs(reel.prob-reel.res1))) #find closest value of reel.res1 in vector reel.prob and return as index
    ans1 <- ans1[1] # sometimes there is multiple value, so we select only first value
    ans1 <- round(ans1, digits = 1) # round digit
    
    # middle reel
    reel.res2 <- 1 - ((sample(x = chip:100, size = 1)) / 100) # formula
    ans2 <- which(abs(reel.prob-reel.res2) == min(abs(reel.prob-reel.res2))) #find closest value of reel.res1 in vector reel.prob and return as index
    ans2 <- ans2[1] # sometimes there is multiple value, so we select only first value
    ans2 <- round(ans2, digits = 1) # round digit
    
    # right reel
    reel.res3 <- 1 - ((sample(x = chip:100, size = 1)) / 100) # formula
    ans3 <- which(abs(reel.prob-reel.res3) == min(abs(reel.prob-reel.res3))) #find closest value of reel.res1 in vector reel.prob and return as index
    ans3 <- ans3[1] # sometimes there is multiple value, so we select only first value
    ans3 <- round(ans3, digits = 1) # round digit
    
    
    final.res <- c(reel.data[ans1], reel.data[ans2], reel.data[ans3])
    
    
    if (all(final.res == "7")) {
      
      cat(final.res, "-- Congrat! what's the odd!")
      
    }else if (all(final.res == "Banana")){
      
      cat(final.res, "-- Get the Minions!")
      
    }else if (all(final.res == "Joker")){
      
      cat(final.res, "-- Boooooo!")
      
    }else {
      
      cat(final.res)
      
    }
    
    
  }else{
    
    print("This machine accepts only chip value 5, 10 and 15. Plese try again!")
    
  }
  
  
}

# try it
slot.machine(5)
slot.machine(10)
slot.machine(15)

#### create condition with "switch" ####


# case handler, execute it with "case3" as input
switch("case3",
       case1 = print("case1"),
       case2 = print("case2"),
       case3 = print("case3"))

# or case index number as input
switch(3,
       case1 = print("case1"),
       case2 = print("case2"),
       case3 = print("case3"))


# function with switch
test1 <- function(input) {
  
  switch(input,	
         case1 = print("case1"),
         case2 = print("case2"),
         case3 = print("case3"),
         case4 = print("case4"),
         case5 = print("case5"),
         case6 = print("case6"),
         case7 = print("case7"),
         case8 = print("case8"),
         case9 = print("case9"))
}


# how to use it 
test1(1) # insert case index
test1("case3") # insert case name


# function with if, else if
test2 <- function(input) {
  
  if (input == "case1"){
    
    print("case1")
    
  }else if (input == "case2") {
    
    print("case2")
    
  }else if (input == "case3") {
    
    print("case3")
    
  }else if (input == "case4") {
    
    print("case4")
    
  }else if (input == "case5") {
    
    print("case5")
    
  }else if (input == "case6") {
    
    print("case6")
    
  }else if (input == "case7") {
    
    print("case7")
    
  }else if (input == "case8") {
    
    print("case8")
    
  }else if (input == "case9") {
    
    print("case9")
    
  }
  
}


# performance benchmark
library(microbenchmark)
benchmark.res <- microbenchmark(test1("case9"), test2("case9"), times = 1000)
print(benchmark.res)

# visualize benchmark result
boxplot(benchmark.res)
