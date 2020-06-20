x1=matrix(10:18,3,3)
x2=matrix(11:19,3,3)
m=cbind(apply(x1,1,min),apply(x2,1,max))
print(m)

y=apply(m,2,mean)
print(y)