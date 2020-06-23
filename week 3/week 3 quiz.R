#week 3 quiz

library(datasets)
data(iris)
?iris
iris

#Question 1
tapply(iris$Sepal.Length, iris$Species == "virginica", mean)


#Question 2
apply(iris[, 1:4], 2, mean)


#Question 3
data(mtcars)
?mtcars
mtcars
lapply(mtcars, mean)
tapply(mtcars$mpg, mtcars$cyl, mean)
with(mtcars, tapply(mpg, cyl, mean))
sapply(split(mtcars$mpg, mtcars$cyl), mean)


#Question 4
a<-tapply(mtcars$hp, mtcars$cyl==4, mean)
b<-tapply(mtcars$hp, mtcars$cyl==8, mean)
209.21429-82.63636
?range
diff(c(a,b))

#Question 5
ls
debug(ls)



