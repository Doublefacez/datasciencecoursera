#### writing functions#####

add2 <- function(x, y){
  x+y
}

above10 <- function(y){
  use <- x>10
  x[use]
}

above <- function(x, n=10){
  use <- x >n
  x[use]
}

x <- 1:20 

above(x, 12)
above(x)


#####function that calculate the mean of each column of a data frame

columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[, i], na.rm = removeNA)    ###na.rm is a basic function of R.studio
  }
  means
}

columnmean(airquality)
####na.rm is a function that consider wether the na values of the column should take into account or not.


#...# the ... argument indicate a variable number of arguments that are usually passed on to other functions.



#########Lexical scoping vs Dynaminc Scoping########

y <- 10 

f <- function(x){
  y <- 2
  y^2 +g(x)
}

g <- function(x){
  x*y
}

f(3)


cube <- function(x, n){
  x^3
}

cube(3)



###Quiz 1###

x <- 1:10
if(x>5){
  x <-0
}



f<- function(x){
  g<-function(y){
    y+z
  }
  z<-4
  x+g(x)
}
 z<-10
f(3) 
