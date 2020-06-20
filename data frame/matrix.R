a=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)

#c=diag(c(1,2,3),3,3)
#b=diag(4,5)

colnames(a)<-c("a","b","c")
rownames(a)<-c("d","e","f")
#a[1:2,1:3]
a[("d","f")]