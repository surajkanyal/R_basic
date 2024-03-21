#  HOW  TO  CREATE  A GROUP OF ELEMENTS IN A VECTOR

#1. CREATE  data for entire weeks sales  activity ---------------

# Create date,weekday, sales and discount data for one week

dates <- c(1,2,3,4,5,6,7)

#or

dates <- 1:7

cat(dates)

class(dates)


# weekday

weekdays <-  c("SUN","MON","TUE","WED","THU","FRI","SAT")
weekdays
class(weekdays)

# Create discount data for 1 week (1 = No discount, 0.5 = 50% discount)

discount <- c(1,1,1,0.5,1,1,1)

# Assigning weekdays  as names  of items in dates ----------

names(dates) <- weekdays
dates

# Selecting elements -----------
#  Selecting  1 element

dates['MON']

# Selecting few element

dates['MON','SUN']  #thats 'WRONG' bcz vector is one dimesonal 
                    #array so it can elongate only in one direction


dates[c('MON','SUN')]   # thats how we do it..


# 2. Create day type vector for one week (WN = weekend ,WY = weekday) ---------------

daytype <- c('WN','WY','WY','WY','WY','WY','WN')
class(daytype)
  
# when represent categorical type of variable where their are two possible values
#FACTOR ----------------------
# To represent categorical data we have factor in R 

daytype <- factor(daytype)  #creating factor  format of daytype
class(daytype)  # Factor class
daytype         #factor has levels encoded from 1
 

#  Acessing element in vector -------
  weekdays[1:4]



# CREATING BLANK VECTOR ----------

# reserving space for an object before you even assign value to it

char_vec <-  character(10)
char_vec  # just an empty vector

# getting size of the object
object.size(char_vec)

#INTEGER  and LOGICAL  takes lowest space


#  Checking the size of variables -----------------
b <- 1
object.size(b)  #  for integer or numeric the size will be 56


a <- "a"
object.size(a)  # for a character or a string size will be 112

#  Creating a new vector from existing vector ------------

#   Combining vector


combined_vec <- c(weekdays,daytype)
combined_vec

  # when we combine two vector interpreter tries to  convert them as character vector
  # daytype  factor  get converted into  1 , 2


# MINI CHALLENGE -----------

# Create a vector containing the numbers form 1 to 26.
# Assign names to the vector items as the alphabets from a-z
# Extract the positions of vowels 'a','e','i','o','u'.

num_vec <- 1:26
alpha <- letters
names(alpha) <- num_vec
alpha


vowels_vec <- alpha[c(1,5,9,15,21)]
vowels_vec
