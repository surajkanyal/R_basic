# How To Create A Single Element Vector -----------------

# 1. Create data for a day's  sales activity --------------------

month <- "Sep_2022"  # created  a month vector
month

# 2. See what variable are present in global namespace --------

ls()

# 3.removing the variable from global namespace ------

rm(month)

# viewing again

ls()

#  4.Clears  the  screen ------------

# ctrl+L  or

cat('\14')


#  5. check class and length ------------

"sep_2023" -> month
class(month)   # character class
length(month)   #  length gives the length of the vector

# 6. getting length of  variable month

nchar(month)
 

# 7 . type casting

M <-9
class(M)
M <- as.character(M)
class(M)

# Challenge done
year <-  as.numeric(readline((prompt = "Enter the year")))
year <-  as.character(year)
print(year)

Year <- as.character(readline(prompt = "Enter the year in format 'DD-MM-YY': "))
print(Year)
rm(year)
print(Year)
