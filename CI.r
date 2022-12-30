#Wap to find compound interest

p = as.numeric(readline(prompt = "Enter the principal value : "))
r = as.numeric(readline(prompt = "Enter the rate "))
t = as.numeric(readline(prompt = "Enter the time"))

CI = p*(1+(r/100))^t - p

cat("The compount interest of given data is : ",CI)