data =read.csv("tripDetails.csv",row.names = 1)
View(data)
str(data)
tripcluster=kmeans(data,3)
#kmean=kmean(x,centers,iter.)

k.max<-10
wss<-rep(NA,k.max)
nclust<-list()
for (i in 1:k.max){
  driveclass<-kmeans(data,i)
  wss[i]<-driveclass$tot.withinss
  nclust[[i]]<-driveclass$size
}
plot(1:k.max,wss,
     type="b",pch=19,
     xlab="no of clusters k",
     ylab="total within clusteraa ss :trips")
     
     