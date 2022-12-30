#WAP to check prime number

var = as.integer(readline(prompt = "Enter the number: "))
c <- 2

while(c<var){
  if(var%%c == 0){
    print("The number is not prime")
    break
  }else{
    c=c+1
  }
}
if(var == 2){
  cat("The given number",var,"is prime")
}else if(var == 1){
  cat("The given number",var,"is not prime")
}else{
  return
}