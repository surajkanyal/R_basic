

#  BINNING : --------------------
 #      It is the operation of converting a continuous variable into a categorical variable.
#  Ex : Age vector to  ' agetype'  vector
#   24,23,60,45,9,4,8    --->  infant , child, teenager , working age , Retirement
# you might to put cutoff for various  levels  to assign the age to age type
#  It is important as to a show result to non technical people by not showing numbers but in format of graphs binning is useful.



# BINNING OPERATION ------------------------
# Creating clicks 28 again

set.seed(100)
clicks_28    <-  round(runif(28,3000,4000))
clicks_28[c(10,21)]  <-  NA   # binning ignore na , inf value
clicks_28[25] <- Inf
clicks_28

# FInd the number of days where clicks are 0-3200, 3000-3600,6500-4000 ---------------

# Lets make bins --
  # 1. 0 - 3200        bin1
  # 2. 3201 - 3600     bin2
  # 3. 3601 - 4000     bin3

#  using cut -----------
#  cut divides the range of x into intervals and codes the values in x according to which interval they fall

bins <- c(0,3200,3600,4000)         # bins created
days_clicks <- cut(clicks_28,bins)  # created cut with bins
table(days_clicks)                  # creates a count table


# As of now the data is little harder to interprete
# Arrange the click categories as "Low clicks" , "Medium clicks" , "High clicks"  ------------

label       <- c("Low","Medium","High")
days_clicks <- cut(clicks_28,bins,label)  #giving third arg. to cut will transform the data
table(days_clicks)

# You can take help for cut args ' ? cut'  / help(cut)



# PRETTY -------------------
#  Automatically find equal size bins ---
#  But It is not always helpful as it always cuts into equal sizes which sometime isnt needed


pretty(clicks_28, 5)
boundaries <- pretty(clicks_28,5)
label <- c("Low","Medium","High","Higher","Highest")
out <-  cut(clicks_28,boundaries,label)
table(out)

# Does not always give the requested number of bins
pretty(clicks_28,6)
  # we wanted six but pretty made it 10



#MINI CHALLENGE ---------------------

# Lets say the temperature of the Pizza Companys location is 68F to 77F
# Analyze  how many days were between 68-70F ,71-74F,75-77F

set.seed(100)
temp_annual <- runif(365,68,77)
breakp <- cut(temp_annual,c(68,70,74,77))
table(breakp)

labell <- c("  68-70F  " ,"71-74F","75-77F")
breakp <- cut(temp_annual,c(68,70,74,77),labell)
table(breakp)
