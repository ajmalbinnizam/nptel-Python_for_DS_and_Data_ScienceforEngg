auto =read.csv("auto.csv")
View(auto)
head(auto)
model=lm(ï..mpg~ .,data=auto)
summary(model)
model1=lm(ï..mpg~ weight+model_year,data=auto)
summary(model1)
model=lm(ï..mpg~cylinders+horsepower+weight+model_year ,data=auto)
summary(model)

train=read.csv("Titanic_Train.csv")
test=read.csv("Titanic_Test.csv")
View(train)
modelt=glm(Survived~.,family="binomial",data=train)
summary(modelt)

library(caret)
logpredict=predict(modelt,newdata = test,type="response")
test[logpredict<=0.5,"logpredict"]="0"
test[logpredict>0.5,"logpredict"]="1"
test$Survived =as.factor(test$Survived)
test$ï..Survived =as.factor(test$ï..Survived)
test$logpredict=as.factor(test$logpredict)

confusionMatrix(test$logpredict,test$ï..Survived,positive="1")

