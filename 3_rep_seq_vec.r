 #  HOW TO USE REPS AND SEQUENCE TO CREATE A VECTOR FAST --------------
 
 
 # Create data for entire month's sales activity
 # date_28
 # weekday_28
 # daytype_28
 # discount_28
 # sales_28             ctrl+shift+c to comment many lines at once
 
 #  1. Regular Sequence -----------------------------
 # date_28 :  Create  28 days in the month ( 4 week month)
 
 date_28 <- 1:28
 
 
 #  2.  Create Repetitions ------------------------
 #  weekday_28 : create weekdays and daytype vector for 28 days by using 'rep'  function

 weekdays
 weekdays_28 <- rep(weekdays, 4) 
 weekdays_28 
 
 # creating daytype_28
 daytype
 daytype_28 <- rep(daytype,4) 
 daytype_28 
 class(daytype_28) 
 
 # discount_28 :  Create discount for 28 days as per question
 
 discount_28 <- rep(c(1,1,1,0.5),7)
 discount_28
 length(discount_28)
 
# 3. CREATE  SEQUENCE -------------------------------
 # sales_28  : Create sales data for 28 days, assuming 2 units increment everyday
 sales_28 <- seq(from = 100, by = 2, length =28)
 sales_28

 #another way of creating a seq is: 
 
 sales_28 <- seq(from = 100 , to = 154 , length =28)
  sales_28 

  
  # MINI CHALLENGE --------------
   #CREATE  employee table for 12 people
   # and assume stating salary as 1000 dollars  and increases by $10  every month
  
  employee <- letters[1:12]
  names(employee) <- 1:12  
  employee  
  
  Each_salary <-   seq(from = 1000, by = 10 ,length = 12)
 Each_salary  
 
 salary <-  seq(from = 1000 , by =200 , length =4) 
 salary <- rep(salary , each = 3) # here each element will be repeated 3 times  but doing simply 'rep(salary,3)'
salary 
