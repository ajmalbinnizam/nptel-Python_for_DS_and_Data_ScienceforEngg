data=read.csv("Auto.csv",header=T)
cor(data$mpg,data$weight)
model=lm(data$mp~data$weight)
summary(model)
