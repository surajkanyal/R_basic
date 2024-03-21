# MISSING VALUES ---------------------

# HOW TO FIND AND REMOVE/REPLACE  MISSING  VALUES

# Pre-create a 'clicks'  vector with missing values
# ' clicks ' :  number  of clicks clicked on website for duration of 28 days

set.seed(100)
clicks_28  <-  round(runif(28,3000,4000))
clicks_28

# inserting NA  values at random position
clicks_28[10] <- NA
clicks_28[21] <- NA

# Just like "NA" represents missing values
# "Inf"  is  used to represent  infinite values

clicks_28[25] <- Inf
clicks_28


# 1. Check for presence of any missing value --------------
# Method 1

anyNA(clicks_28)  #outs true or false  most commonly used

# Method 2
NA %in% clicks_28

# 2. Check each element for missing -----------------

clicks_28 == 3308  # For such checks on other. use this syntax  checks every element

# BUT THIS WONT WORK WITH NA ,,,,,XXXXXX  clicks_28 == NA


# CORRECT WAY
  is.na(clicks_28)  # most commonly used all in  r
  
  na_mask <- is.na(clicks_28)  #Find places where elements are missing
  not_na_mask <- !is.na(clicks_28)
  
  
# 3. check for presence of infinite values
  is.infinite(clicks_28)

  
# 4. How to remove missing value -------------------
# Method  1
   
  clicks_28[not_na_mask] # Subset to remove missing value  most common 


  # Method 2
    na.omit(clicks_28)
      # also produce extra attribute    
    
    
#  5. Replace  missing value
    clicks_28 # reopen the 2 NA in clicks_28

      na_position <- which(is.na(clicks_28))   # positions of missing values
      na_position
      
      #replace all missing values with same number
      clicks_28[na_position] <-  3500
       
      # Replace all missing with different values
      
      clicks_28[na_position] = c(3500,3700)
      
# 6 . When to remove and when to replace missing values?
      # -> Remove : Large  number of data is present and removing it does not affect much
      # -> Replace : When we have less data points(<30) and their is a fairly logical way of computing 
      
    
    # Mini - Challenge
      
    #  In a recent survey sent to 1000 people, respondents rated(out of 10 )
    # a thin- crusted pizza. But some oof them left in blank.
    # Find these 'blanks' and eliminate them.
      
      #Input code
      
      #Pre - create a 'pizza_tc_score' vectpr with missing values
      
      set.seed(100)
      pizza_tc_score <- round(runif(1000,3,10))
      pizza_tc_score [c(100,204,709,816,938)] = NA

      # Answer
      
      blank_re <- which(!is.na(pizza_tc_score))
      update_pizza_tc_score <- pizza_tc_score[blank_re]            
      update_pizza_tc_score      
      