# Operation on vector 
# Operion between different sized vector
#recap: 
# Revenue increase for increase in shifts from 1 to 2 on eveny 4tn day

set.seed(100) 
clicks_28 <- round(runif(28,3000,4000))
sales_28 <-  seq(from = 100, to=150,length = 28)
visitors_28 <-  runif(28,1000,1100)
discount_28 <- rep(c(1,1,1,0.5),7)
mrp <- 5
daily_max_revenue <- sales_28*mrp
daily_actual_revenue <- daily_max_revenue*discount_28
total_revenue <- sum(daily_actual_revenue)

# Create shift data for a 4 day sequence ------------------
shifts  <- c(1,1,1,2)

# Update revenge due to increase in shifts ------------------
possible_revenue <- daily_actual_revenue *shifts
possible_revenue

total_revenue_shift = sum(possible_revenue)

rev_increase_shift <- total_revenue_shift - total_revenue
rev_increase_shift


#Mini CHALLENGE
# what is the increase in revenue if you put a double shift every alternate day?

alt_shift <- c(1,2)
new_rev <- daily_actual_revenue*alt_shift
total_new_rev <- sum(new_rev)
total_new_rev
diff <- total_new_rev - total_revenue
diff

#Impact of ad _campaign on revenues --------------


#Plan ads every tue and fri to increase clicks by 40%---------------
#Find Revenue per click

revenueper_click <- daily_actual_revenue/clicks_28
revenueper_click
mean(revenueper_click)

 
# Create ad data(1 =no increase in clicks , 1.4 = 40%) increase) on tuesday and friday
ad <- c(1,1,1.4,1,1,1.4,1)

#calculate new value for clicks after ad campaign
clicks_ad <- clicks_28*ad
clicks_ad   # after running the ad campaign this much of clicks we can expect from users

#calculate new value of revenues   after ad campaign
revenue_ad <-  revenueper_click*clicks_ad
total_revenue_with_ad = sum(revenue_ad)


#calculate increase in sum revenue
rev_increase_ad =  total_revenue_with_ad - total_revenue
rev_increase_ad

# 3 Day strategy sun, wed,sat 25% increase. Is it better than 2day strategy?
 ad_3 <- c(1.25,1,1,1.25,1,1,1.25)
 click_ad3 <- clicks_28 *ad_3
new_3rev <- revenueper_click*click_ad3
total_3rev <- sum(new_3rev)
total_3rev

#is it better then 2 day stratergy
 difference <- total_3rev - total_revenue_with_ad
difference 
 # No it isnt as their difference is in minus