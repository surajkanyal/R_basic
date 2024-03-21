#1 .FORMATTING NUMBERS ----------
#  CONTROLLING THE NUMBER OF DIGITS PRINTED IN THE CONSOLE

n = 1.1234567

n2 <-  112.392456

round(n,3)

# Print n digits irrespective of the number of digitd after the decimal point

options(digits = 4)
n
n2

options(digits = 6)
n
n2

# Controlling the printing of the scientific notation ----------------------

#printing  a small number is fine

1200000

12000000000000000 # prints with e power notation 

# By setting the scipen  parameter. you can get rid of the scientific notation that is the 'e' notation

options(scipen = 999)
1200000000000000000  #Now  its printing the whole value instead with e


# ---------- these are the way to contol number formatting ---

# MINI CHALLENGE ------------

random_data <-  runif(28, min = 500 ,max =600)
cars_drive_28 <- ceiling(rnorm(28,mean = 650 , sd = 25))
cars_drive_28

car_norm <- sample(cars_drive_28,10)
car_norm
#getting smaple
set.seed(25)
feed_norm <- sample(101:200,15)
feed_norm
# getting sample from samples
dist.feed <- sample(feed_norm, 10)
dist.feed
