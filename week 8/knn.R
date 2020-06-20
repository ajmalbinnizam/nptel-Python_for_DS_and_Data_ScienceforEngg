library(class)
library(caret)

servicetest=read.csv("serviceTestData.csv")
servicetrain=read.csv("serviceTrainData.csv")
View(servicetrain)
str(servicetrain)
summary(servicetrain)
summary(servicetest)
predictknn=knn(train = servicetrain[,-6],
               test=servicetest[,-6],
               cl=servicetrain$Service,
               k=3)
confmatr=table(predictknn,servicetest[,6])
knnacc=sum(diag(confmatr))/nrow(servicetest)
knnacc
conf=confusionMatrix(data=predictknn,servicetest$Service)
conf
