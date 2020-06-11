x = -1:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)


#List function# list has a double brackets (())

x <- list(1, "a", "b", TRUE, 1+4i)
x
as.numeric(x)
as.logical(x)
as.character(x)

###########################Matrix################################

#Creating a matrices
m<- matrix(nrow = 2, ncol = 3)
m

dim(m)  #it shows how many rows and coloumns of ur matrix (row, col)
attributes(m)   #shows the dim

m<- matrix(1:6, nrow=2, ncol = 3)   #
m

#Can also create a matrix with the dimensional attributre on a vector

m <- 1:10
m
dim(m) <- c(2,5)
m

#Another common way to create a matrix (By binding columns or rows)
#cbind and rbind

x = 1:3
y = 10:12
cbind(x, y)
rbind(x, y)

#Can also name the rows and colums 
m <- matrix(1:4, nrow=2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m


####################Factors########################

x <- factor(c("yes", "no", "no", "yes", "yes"))
x
table(x)
unclass(x)    #the level now is no, yes

#If you want to change the order of levels
x <- factor(c("yes", "no", "no", "yes", "yes"),
            levels = c("yes", "no"))
x



###########Data frames##############

#Creating a data frame

z <-data.frame(class = c("a", "b", "c", "d"), student = 1:4)
z


########dput-ting R Objects##########

y <- data.frame(a =1, b="a")
dput(y)
dput(y, file = "y.R")   ##deput can only store 1 object, use dump() can store multiuple objects
new.y <- dget("y.R")
new.y

######Subsetting##########
x<- c("a", "b","c","d","e","f")
x[1]
x[2]
x[3]
x[1:4]
x[x >"a"]
u <- x>"a"
u
x[u]

#subsetting a list


##Week 1 Quiz##

data = read.csv(file.choose(), header=T)

readline(data, 2)
data
data[c(1:2),]
nrow(data)
data[c(nrow(data)-1, nrow(data)),]


data[47, c("Ozone")]
table(factor(is.na(c(data$Ozone))))

mean(data$Ozone[!is.na(data$Ozone)])

ok <- complete.cases(data$Ozone, data$Solar.R, data$Temp)
mean(data$Solar.R[ok & data$Ozone > 31& data$Temp >90])


mean(data$Temp[data$Month==6])
max(data$Ozone[data$Month==5 & !is.na(data$Ozone)])
