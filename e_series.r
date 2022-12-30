# find the sum of series expo
# 1+x+x^2/2! and so on
# n x,should be entered at run time

F <- function(n,x){
  sum=0
 # n1 = n-1
  
  for(i in 0:(n-1)){
    
    sum = sum + (x^i)/factorial(i)
   # print(sum)

  }
  return(sum)
}

n = as.numeric(readline(prompt = "Enter the value of n: "))
x = as.numeric(readline(prompt= "Enter the value of x : "))

cat("The sum of the series is : ",F(n,x))

