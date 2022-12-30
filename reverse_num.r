#wap in reverse an number

var = as.integer(readline(prompt = "Enter the number"))
i = 0
reverse_var =0
while(var!=0){
    rem = var%%10
    reverse_var = reverse_var*i +rem
    var=floor(var/10)
    i =10
}
 
cat(reverse_var)
