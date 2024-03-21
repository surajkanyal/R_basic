#  Filtering ,'which' , boolean mask

# Creating a subset ----------

# Find the length of visitors 

set.seed(100)
visitors_28  <-  runif(28 ,1000 , 1100)
visitors_updated <- ceiling(visitors_28)
length(visitors_updated)
 
# want to know how many visitors arrived when discount was given

# 1. Create subset of vectors --------------------------------

# Method 1 - Using hard coded positions
# Create subset for number of visitors on days of discount
# use sequence to get discount days 
v <- seq(from = 4 , to = 28 ,by = 4)

visitors_discount <-  visitors_updated[v]
visitors_discount


# 2. which() -----------------------------------
# METHOD 2 - Using logic based positions

# which  takes an  boolean type argument and based on that send the indexes of that place
 
# for ex:
  salarys <-  salary>1010
  salarys  
  sal_index <- which(salarys)  
  salary[sal_index]   # will get the required data  >1010
  
#  Lets do same with visitors  
  sales_28
  sales <- which(sales_28>140)
  sales
  visitors_updated[sales]
  

  
# 3. Subsetting on Multi conditions --------------
  # Sales units > 120 units and units are multiple of 4
   
  # use of which with multiple comments
  
  pos_2 <-  which(sales_28>120 & sales_28%%4)   #using multiple criteria
  
  sales_28[pos_2]

  
# Position of sales which are multiples of 6 or multiples of 4
  
  pos_3 <-  which(sales_28%%6 ==0 | sales_28 %% 4 == 0) # Criteria
  sales_28[pos_3]
  
  visitors_updated[pos_3]

  
# 4.  Masking ------------------------------
  # Masking - By finding out which elements fulfill the criteria (True/False)
  
  mask <- (sales_28%%6 == 0 | sales_28%%4 ==0)  # Boolean mask
  mask
  sales_28[mask]
  
  
# MINI CHALLEGE--------- 
  
  # Online pizza Co. floated a survey to a 1000 people to check their liking for their flagship pizza
  # A subset of people responded with a rating between 1 to 5 means no response
  
  #input code ....
  
  # Age of survey sent group
  set.seed(100)
  survey_sent_age <- runif(1000,min = 10 ,max = 70)
  survey_sent_age <- round(survey_sent_age)
  
  
  # Response to survey '0'  means no response
  survey_response <-  sample(0:5 , 1000 , replace = TRUE)
  survey_response
  
  # 1. Find the total number of people who responded ?
  response <- which(survey_response >=1)
  cat("Total number of people who responded are :",length(response))   
  
  # 2. How many people responded between age 20 to 30?
  respons_20_30 <- which((survey_sent_age > 20 & survey_sent_age < 30) & survey_response>0)
  cat("Total number of people b/w age 20 and 30 response are :",length(respons_20_30 ))
  
  # 3. How many people rated 4 or above in the age group of 20 to 30?
  
  rate_4 <- which((survey_sent_age > 20 & survey_sent_age < 30 )& survey_response>=4)
  cat("Total reponse 4 and above of age group 20-30 is :", length(rate_4))  
  