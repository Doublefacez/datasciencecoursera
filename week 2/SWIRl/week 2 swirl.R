### week2 swirl


library(swirl)
swirl()

#lesson 8
 TRUE == TRUE
 (FALSE == TRUE) == FALSE
 6==7
 6<7
 10 <= 10
 5!=7 
 ! 5==7
 FALSE & FALSE
 TRUE & c(TRUE, FALSE, FALSE)
 TRUE && c(TRUE, FALSE, FALSE)
 TRUE | c(TRUE, FALSE, FALSE)
 TRUE ||  c(TRUE, FALSE, FALSE)
 5>8 || 6 !=8 && 4>3.9
 isTRUE(6 >4 )
 identical("twins", "twins")
 xor(5==6, !FALSE)
 ints <- sample(10)
 ints
 ints >5 
 which(ints >7)
 1
 any(ints <0)
 all (ints>0) 

#lesson 9
 
d1 <- Sys.Date()
d1 
class(d1)
unclass(d1) 
 
d1 
d2 <- as.Date("1969-01-01") 
unclass(d2)
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
t2
class(t2)
unclass(t2)
str(unclass(t2))
t2$min
t2$sec
weekdays(d1)
months(t1)
quarters(t2)
strptime()
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time()>t1
Sys.time() - t1
difftime(Sys.time(), t1, units = "days")
