a=data.frame(x1=c("A","B","C"),x2=1:3)
b=data.frame(x1=c("A","B","C"),x2=c("yes","no","yes"))
library(dplyr)
left_join(a,b,by=x1)
