#WAP to check prime number

var = as.integer(readline(prompt = "Enter the number: "))
c <- 0
for(x in 2:var){
  if(var%%x == 0){
     c = c+1
  }
}
if(c>1){
  print("The number is not a prime number")
}else{
  print("The number is a prime number")
}