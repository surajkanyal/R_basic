#wAP to find S.I

p = as.integer(readline(prompt = "Enter the principal amount"))
r = as.integer(readline(prompt = "Enter the rate"))
t = as.integer(readline(prompt="Ener the time"))

si = (p*r*t)/100

cat("The simple interest is :",si)