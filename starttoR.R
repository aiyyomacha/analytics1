#Starting to work in R

#assign--
x1=3
x2<-3
#print values
x1
x2
#datasets available for use
data()
women
?women
?mtcars
mtcars0
mtcars$mpg
attach(mtcars)
mpg
#libraries currently loaded
library()
#elements
ls()
rm(list=ls())
rm(list=ls(all = TRUE))
?mean
x <- c(0:10, 50)
x
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10))
#create value
1:100
#create values
1:100
seq(0,100, by=2)
x = c(0:10, 50:100)
x
#create value
plot(1:10)
source('test1.R')
