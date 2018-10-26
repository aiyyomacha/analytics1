#Import / Export Data

#Check for files and folders
dir('/data2')
list.files('/data')
list.files('/data2')

#Reading from a Flat file into a vector
list.files('./data2')
data = scan("./data2/hhe.txt", what = "character")
head(data)

class(data)

#CSV Read from CSV
#First create as csv file from IRIS data set
head(iris)
?iris
write.csv(iris,"./data/iris.csv", row.names=F)
#Go to folder and see iris.csv
read1 = read.csv(file="./data/iris.csv", header = TRUE, sep =",")
str(read1); class(read1)


#CSV File read from Internet
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)


#Import from Google Sheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QBG4wCxPBWHJv0vKQye-dWqZU1N2mqrn34zf4TVQ87I/edit?usp=sharing"


df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

url_gsheet = "https://docs.google.com/spreadsheets/d/1P_FYyiMdEbhwn7hD7GmLBFAJ6hKJU3rl-HMO8wXwBzY/edit#gid=0"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#1st row contains Variable names

library(xlsx)
