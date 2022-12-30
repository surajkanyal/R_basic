factorial <- function(n){
  if(n<=1){
    return(1)
  }else{
    return(n*factorial(n-1))
  }
}
a =factorial(5)
cat(a)