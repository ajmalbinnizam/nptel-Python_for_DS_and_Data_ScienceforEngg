data=read.csv("wine.csv")
str(data)
data1=scale(data)
set.seed(1234)
wine<-kmeans(data1,3,nstart = 25)
wine





