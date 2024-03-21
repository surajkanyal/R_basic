# HOW TO CREATE RANDOM VARIABLES, SAMPLING  AND  ROUNDING ----------


# 1. CREATE DATA FOR DAILY VISITORS TO WEBSITE OF SELLER (28 DAYS OF DATA) ---------

# Creating random numbers without limits

visitors <- runif(28)   #  runif gives random number b/w 0 and 1

visitors

# create random numbers assuming daily visitors b/w  1000  and 1100

visitors_28 <- runif(28, min = 1000 , max =1100)
visitors_28

# these random numbers will always be different no matter how many times you run the cmd
# example:

  visitors_28 <- runif(28, min = 1000 , max = 1100)
  visitors_28

# THIS is how we fix random numbers --------------
  
  set.seed(28)
  visitors_28 <- runif(28 , min = 1000 , max = 1100)
  visitors_28

  # now try again to if it works
  
  set.seed(28)
  visitors_28 <- runif(28 , min = 1000 , max = 1100)
  visitors_28
 # ........YES THEY ARE SAME .........  
  

# BUT FOR GETTING REAL WORLD DATA WHICH TEND TO FOLLOW NORMAL DISTRIBUTION-------------
  # eX : height of white caucasisan male
  height_28 <- rnorm(28 , mean = 6.00 , sd = .3)
  height_28  
  
# 2. SAMPLIG -----------------
  # random sampling without replacement
  samp_1 <-  sample(1:100 , 10)
  samp_1  # will pick any 10 random number from 1 to 100

  # to reproduce same sample again set the seed
  set.seed(100)
  samp_1 <- sample(1:100,10)
  samp_1
  
  set.seed(100)
  samp_2 <- sample(1:100,10)
  samp_2  
#-----------same--
   # the above sampling are sampling without replacement
   # to do sampling with replacement
  
  samp3 <- sample(1:10,20)  #will produce error as it is without replacement
  samp3 <- sample(1:10,20 , replace = TRUE)
  samp3
  

# ROUNDING -----------
  round(visitors_28)  #round users
  
  floor(visitors_28)  

  ceiling(visitors_28)  

  trunc(visitors_28)  

# Update visitors vector
  visiors_updated <- ceiling(visitors_28)

  
