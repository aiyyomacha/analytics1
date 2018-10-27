#Create Vector of Student names: divide into 2 groups
(studentname = paste('Student', 1:33, sep = '-'))
length(studentname)
.6 * length(studentname)
#group1 = 60% group2 = 40%
index = sample(length(studentname), size = .6 * length(studentname))
index
studentname[index]
length(studentname[index])
studentname[-index]


#using caret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3 = createDataPartition(y=df$gender, p= 0.7, list = F))
length(index3)
(train3 = df[index3,])
(test3 = df[-index3,])
(t3a = table(train3$gender)) ; prop.table(t3a)
(t3b = table(train3$gender)) ; prop.table(t3b)
#proportion of am is almost the same in both the samples.
nrow(train2); nrow(test2)
