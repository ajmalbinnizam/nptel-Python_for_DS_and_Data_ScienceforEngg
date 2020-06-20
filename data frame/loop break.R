n=100 
sum=0 
for(i in seq(1,n,2)){
  sum=sum+i  
  print(c(i,sum)) 
  if(sum>20) 
    break 
}
