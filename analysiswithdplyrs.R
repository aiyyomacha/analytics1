#analysis of dataset mtcars using dplyr
#filename : dplyr-mtcars.R

library(dplyr)
?mtcars
#structure of Data Set
str(mtcars) #structure
dim(mtcars) #dimensions
names(mtcars) #column names
rownames(mtcars) #row names
summary (mtcars) #summary of data set


#summary activities on mtcars
t1= table(mtcars$am)
count (mtcars, am)
pie(t1)
pie(t1, labels=c('auto', 'manual'))
summary (mtcars, gear)
count (mtcars, gear)
t2= table(mtcars$gear)
pie(t2)
pie(t2, labels=c('3 gear transmission', '4 gear transmission', '5 gear transmission'))
barplot(t2, col = 21:31)
barplot(t2, col=c('green', 'red', 'orange')) xlab = 'Gear' ylab= 'no of cars' ylim= c(0,20)
title(main='Distribution of Gears and Cars', sub='No of Gears')
plot(mtcars$gear, mtcars$cyl)


#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5, 10))
#select is used for columns, slice is used for rows
mtcars %>% arrange(mpg) #ascending order of mileage (sorting)
mtcars %>% arrange(am, desc(mpg)) %>% select(am, mpg) #descending order of mileage (sorting)
mtcars %>% arrange(hp) #ascending order of horsepower
mtcars %>% arrange(disp, desc(hp)) %>% select(disp, hp) #sorting one variable in ascending and one in descending order simultaneously
mtcars %>% mutate(rn = rownames(mtcars)) %>% select(rn,mpg) #display rownames with mpg
mtcars %>% arrange(disp, desc(hp)) %>% select(disp, hp) %>% mutate(rn = rownames(mtcars)) #mutate adds row names
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11), size=2)) %>% head
sample(x=1:11, size = 2)

mtcars %>% mutate (newmpg = mpg * 1.1)
mutate(mtcars, newmpg = mpg * 1.2)

#Type of Tx, mean(mpg)
mtcars %>% group_by(am) %>% summarise(MeanMPG =mean(mpg))
mtcars %>% group_by (am) %>% summarise(MeanMPG = mean(mpg), MaxHP = max(hp), MinWT = min(wt))
mtcars %>% group_by(gear, cyl) %>% summarise(MeanMPG = mean(mpg))
mtcars %>% group_by(am, vs) %>% summarise(MeanMPG = mean(mpg))
