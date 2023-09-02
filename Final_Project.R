wholesale<- read.csv("E:/10th semester/Data Science/Final/Project/WholesaleCustomersData.csv",header = TRUE,sep=",")
options(max.print = 100000)
wholesale
names(wholesale)
str(wholesale)
summary(wholesale)
colSums(is.na(wholesale))
wholesale <- wholesale[-c(1,2)]
wholesale
wholesale<- wholesale[apply(abs(scale(wholesale)) < 3, 1, all), ]
wholesale
str(wholesale)
summary(wholesale)
install.packages("factoextra")
library(factoextra)
fviz_nbclust(wholesale, kmeans, method = "wss")
fviz_nbclust(wholesale, kmeans, method = "silhouette")
fviz_nbclust(wholesale, kmeans, method = "gap_stat")
km <- kmeans(wholesale, centers = 3, nstart = 25)
km
wholesale_customer<- cbind(wholesale, cluster = km$cluster)
wholesale_customer
fviz_cluster(km, data = wholesale)
