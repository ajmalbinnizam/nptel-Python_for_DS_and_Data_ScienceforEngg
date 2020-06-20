nyc=read.csv("nyc.csv")
View(nyc)
head(nyc)
plot(nyc,main="Pairwise Scatter Plot")
round(cor(nyc),3)
nycmod=lm(Price~Food+Decor+Service+East,data=nyc)
nycmod1=lm(Price~Food+Decor,data=nyc)
summary(nycmod1)

