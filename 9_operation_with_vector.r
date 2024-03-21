# To get to know about data we need a summary statistics ex: mean , median , max , min -------------------
# Also complete control over manipulate data like: sort,unique values, duplicate values, Quantiles ----------


# Unique and Duplicate values -------------

#Recreate clicks_28
set.seed(100)  
clicks_28     <- round(runif(28,3000,4000))
clicks_28[c(10,21)] <-  NA
clicks_28[25] <- Inf


# 1. Find unique values ------------------
unique(clicks_28)
length(unique(clicks_28))



# 2. Find duplicate valuse ----------------------\  
duplicated(clicks_28)
clicks_28 [duplicated(clicks_28)]


#3 . How to find average clicks -------------------

avg_clcik <- mean(clicks_28)
avg_clcik  # The result will be na because their are some missing values in data whicch need to be removed before getting mean
# so to get right answer

avg_clcik <- mean(clicks_28, na.rm = T) # will give the mean neglecting missing value

avg_clcik # but still giving inf because infinite value isnt handled yet

# so to get correct mean

# Remove infinity values ----------

clicks_28_noinf <- clicks_28[!is.infinite(clicks_28)]

# Remove missing values ---------------
clicks_28_noinf_nona <- clicks_28[!is.infinite(clicks_28)]
clicks_28_noinf_nona  <-  na.omit(clicks_28_noinf_nona)

clicks_28_noinf_nona

# averge click
cr_avg_click <- mean(clicks_28_noinf_nona)
cr_avg_click

# Direct way or alternate way 
mean(na.omit(clicks_28[!is.infinite(clicks_28)]))

# Down side is its hard to read and understand  but good thing is it wont take more memory


# 4. Find Total clicks in a month -----------------
# SUM
total_clicks <-  sum(clicks_28_noinf_nona)
total_clicks


#Sorting
 sort(clicks_28_noinf_nona) # increasing order  
 sort(clicks_28_noinf_nona,decreasing = T) # decreasing order  

 #most commonly used approach used by r programmer
 #works generally faster than sort function 
 order(clicks_28_noinf_nona) #position of items after sorting in increasing order
 #and doing this it will give vector in sorted manner
 clicks_28_noinf_nona[order(clicks_28_noinf_nona)]
  
 # to det data in descending order '-'
 clicks_28_noinf_nona[order(-clicks_28_noinf_nona)]
 
 # 6. Find median (50th Percentile ) of clicks --------------
 quantile(clicks_28,probs =0.50 , na.rm = T)
 # pr use median 
  median(clicks_28 , na.rm = T)
  
  
  # 7 . 25th and 75th percentile ------------
  
  quantile(clicks_28, probs =.25 , na.rm = T)
  quantile(clicks_28, probs = .75 ,na.rm = T)  
  quantile(clicks_28 , c(0.25,0.500, 0.75) ,na.rm = T)

  # 7 . summary ----------------
  summary(clicks_28)
  
  
  # mini challenge ----------------
  
  # 1. Find mean and median age of the 7 kitchen employees of online pizza co
  
  # 2. Find the value and postion of the second highest age
   
  age <-  c(30,42,23,48,28,NA,40)

  #mean 
  mean(age , na.rm = T)
  # median age 
  median(age, na.rm = T)
  quantile(age, probs = 0.50 , na.rm = T)  

  # value and position of the second highest age  
  order(age, decreasing = TRUE)  
  age[ order(age,decreasing = TRUE)]  

  # position 2 and value = 42  