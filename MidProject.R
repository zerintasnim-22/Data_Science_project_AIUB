mydata<-read.csv("E:/10th semester/Data Science/Project/Dataset_midterm.csv",header=TRUE,sep=",")
mydata
names(mydata)
str(mydata)
summary(mydata)
install.packages("dplyr")
library(dplyr)
colSums(is.na(mydata))
mydata_remove<-na.omit(mydata)
s<-mydata_remove$Age
sd(s)
s<-mydata_remove$weight.kg.
sd(s)
s<-mydata_remove$Delivery_number
sd(s)
s<-mydata_remove$Delivery_time
sd(s)
s<-mydata_remove$Heart
sd(s)
s<-mydata_remove$Caesarian
sd(s)
mean(mydata_remove$Age)
summary(mydata_remove)
install.packages("ggplot2")
library(ggplot2)
str(mydata_remove)
Age<-mydata_remove$Age
hist(Age)
Weight<-mydata_remove$weight.kg.
hist(Weight)
Delivery_Num<-mydata_remove$Delivery_number
hist(Delivery_Num)
Delivery_t<-mydata_remove$Delivery_time
hist(Delivery_t)
Blood<-mydata_remove$Blood
hist(Blood)
mydata_remove["Blood"][mydata_remove["Blood"] == "normal"]<-1
mydata_remove["Blood"][mydata_remove["Blood"] == "high"]<-2
mydata_remove["Blood"][mydata_remove["Blood"] == "low"]<-3
mydata_remove
summary(mydata_remove)
s<-mydata_remove$Blood
sd(s)
which(is.na(mydata_remove$Blood))
mydata1<-na.omit(mydata_remove)
Caesarian<-mydata_remove$Caesarian
hist(Caesarian)

hist(mydata_remove$Age,xlab = "Age",main = "Outlier of Age", breaks = sqrt(nrow(mydata_remove)))

hist(mydata_remove$weight.kg.,xlab = "Weight",main = "Outlier of Weight", breaks = sqrt(nrow(mydata_remove)))
                                                                          




