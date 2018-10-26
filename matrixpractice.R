#Matrix
100:111
(m1=matrix(101:140, nrow=4)) #Columns
(m2=matrix(101:140, ncol=4, byrow = T)) #Rows
100:111
m1
100:111
(m1 = matrix(1:12, nrow=4))
(m2 = matrix(1:12, ncol=3, byrow=T))
x=101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1
# access elements of matrix
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]
#names of cols and rows
m1

paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1) = paste('C',1:3, sep=''))
m1
(rownames(m1) = paste('R',1:4, sep=''))
m1
attributes(m1)

#Vector to Matrix
(m3 = 1:24)
dim(m3)= c(6,4)
m3

#access elements
m2
m2[1,]  #first row
m2[c(1,3,4),]  #1st,3rd,4th row

m2[,1]  #first col
m2[,2:3] # 2nd to 3rd coln

m2[c(1,2),c(2,3)]
m2[,]
m2[-2,] # exclude 2nd row
m2
m2[1:5] # matrix is like vector
m2
m2[c(TRUE,F,T,F),c(F, T, T)] #logical indexing
m2[m2 > 5 & m2 < 10]

m1
m1[1:2,1:2]
m1[c('R1'),c('C1','C3')]
m1[1:2,]
m1[c(T,T,F,F),]
m1

#modify Vector
m2
m2[2,2]
m2[2,2] = 10
m2
m2[m2> 10] = 99
m2
rbind(m2, c(50,60,70))
m2
cbind(m2, c(55,65,75,85))
rbind(m2,m2)

m2
#row and col wise summary
m1
colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)

t(m1) # transpose
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+" ) #rowise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" ) #colwise
#addmargins
m1
?addmargins
addmargins(m1,margin=1,sum) #colwise function
addmargins(m1,1,sd) #colwise function

addmargins(m1,2,mean) #rowwise function
addmargins(m1,c(1,2),mean) #row & col wise function

addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd))) #row & col wise function
