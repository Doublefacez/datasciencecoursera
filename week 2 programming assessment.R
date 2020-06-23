####################### Week 2 Programming Assignmane #####################

## Part 1 Write a function "pollutantmean" to calculate the mean 

pollutantmean <- function(directory, pollutant, id = 1:332){
  locate_files <- list.files(directory, full.names = TRUE)  #Locating the files in the directoroy
  data <- data.frame()    #Creating an empty data frame for storing the values
  for (i in id) {
    data <- rbind(data, read.csv(locate_files[i]))    #subseting the data in all files and put it into the data frame
  }
  
  mean <- mean(data[, pollutant], na.rm = TRUE) #calculating the mean of the pollutant
  
  return(mean)
}

pollutantmean("specdata","sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)
pollutantmean("specdata", "nitrate")


####Part 2 Write a function that reads a directory full of files
####and reports the number of completely observed cases in each data file.

complete <- function(directory, id= 1:332){
  locate_files <- list.files(directory, full.names = TRUE)
  data <- data.frame()
  
  for(i in id){
    read_each_file <- read.csv(locate_files[i])   #Read the specified files
    nobs <- sum(complete.cases(read_each_file))   #calculate the total number of complete rows in each file
    store_data <- data.frame(i, nobs)     #Store the file name and the values into a data frame
    data <- rbind(data, store_data)     
  }
  colnames(data) <- c("id", "nobs")   #provide a names to each column in the data frame
  return(data)
}

complete("specdata", 1:32)

#Question 5
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

#Questopm 6
cc <- complete("specdata", 54)
print(cc$nobs)

#Question 7
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])



#### Part 3 Write a function that takes a directory of data files
#and a threshold for complete cases and calculates the correlation
#between sulfate and nitrate for monitor locations where the
#number of completely observed cases (on all variables) is greater 
#than the threshold.

corr <- function(directory, threshold = 0){
  files <- list.files(directory, full.names = TRUE)
  correlation <- c()
  id <- 1:332
  
  for (i in id){
    data_each_file <- read.csv(files[i])
    cvalue <- if(sum(complete.cases(data_each_file))> threshold){
       cor(data_each_file$sulfate, data_each_file$nitrate, use ="pairwise.complete.obs")
    }
    correlation <- c(correlation, cvalue)  
  }
  return(correlation)
}

cr <- corr("specdata", 150)
head(cr)

#Question 8
cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

#Question 9
cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

#Question 10
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
