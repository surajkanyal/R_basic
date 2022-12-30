fibonacci <- function(n){
  if(n==0){
    return(0)
  }else if(n==1){
    return(1)
  }else{
    return(fibonacci(n-1)+fibonacci(n-2))
  }

}
fibonacci(4)

i =0
while(i<=4){
  cat(fibonacci(i))
  i=i+1
}