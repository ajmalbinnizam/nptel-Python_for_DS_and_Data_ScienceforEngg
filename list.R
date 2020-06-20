#list example
id=c(1,2,3,4)
emp.name=c("man","rag","sha","din")
num.emp=4
emp.list=list(id,emp.name,num.emp)#for accesing object=list(object)
print(emp.list)
emp.list=list("no"=id,
              "names"=emp.name,
              "total staff"=num.emp)
print(emp.list$no)

print(emp.list[[1]])#(1,2,3,4) 
print(emp.list[[2]])#emp.name
print(emp.list[[1]][1])#answer is 1
print(emp.list[[2]][1])#2 il 1 "man"
#manipulate
emp.list["total staff"]=5
emp.list[[2]][5]="nir"
emp.list[[1]][5]=5
print(emp.list)

#concatenation

emp.ages=list("ages"=c(23,44,55,66,77))
emp.list=c(emp.list,emp.ages)
print(emp.list)





