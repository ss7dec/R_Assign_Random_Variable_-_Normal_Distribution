####### Session 11: Random variable and Normal Distribution ######

# 1.  The time required for servicing transmissions is normally distributed with = 45 minutes and 
# ???8 minutes. The service manager plans to have work begin on the transmission of a customer's car 10 
# minutes after the car is dropped off and the customer is told that the car will be ready within 1 
# hour from drop-off. What is the probability that the service manager cannot meet his commitment?  
# A.  0.3875    
# B.  0.2676    
# C.  0.5    
# D.  0.6987  

##### Ans:::::

# Let X denote the time required for servicing a car.
# We want to find out probabilty P(X+10???60) = P(X???50).


##### Method -1 using Z- score #########
# Formula for calculating z-score = (x-??)/??
z_value <- (50-45)/8  # Corresponding to 50
# Then P (X???50) = P(Z???0.625) = 0.265986 from the Z-table.
pnorm(-abs(z_value))

##### Method-2 using P-norm #########
round(pnorm(q=50, mean=45, sd= 8, lower.tail = FALSE),3)

# The probability that the service manager cannot meet his commitment is 0.266


# 2.  The current age (in years) of 400 clerical employees at an insurance claims processing center is 
# normally distributed with mean 38 and Standard deviation = 6. For each statement below, 
# please specify True/False. If false, briefly explain why. 
# A.  More employees at the processing center are older than 44 than between 38 and 44. 
# B.  A training program for employees under the age of 30 at the center would be expected to 
# attract about 36 employees. 



# 3.  If X 1  ~ N(??, ?? 2 ) and X 2  ~ N(??, ?? 2 ) are iid normal random variables, then what is the 
# difference between 2 X 1  and X 1  + X 2 ? Discuss both their distributions and parameters.        



# 4.  Let X ~ N(100, 20 2 ). Find two values, a and b, symmetric about the mean, such that the 
# probability of the random variable taking a value between them is 0.99.  
# A.  90.5, 105.9  
# B.  80.2, 119.8  
# C.  22, 78  
# D.  48.5, 151.5  
# E.  90.1, 109.9 

# Since we need to find out the values of a and b, which are symmetric about the mean, such that the probability of random variable taking a value between them is 0.99, we have to work out in reverse order.
# The Probability of getting value between a and b should be 0.99.
# So the Probability of going wrong, or the Probability outside the a and b area is 0.01 (ie. 1-0.99).
# The Probability towards left from a = -0.005 (ie. 0.01/2). 
# The Probability towards right from b = +0.005 (ie. 0.01/2).
# So since we have the probabilities of a and b, we need to calculate X, the random variable at a and b which has got these probabilities. 
# By finding the Standard Normal Variable Z (Z Value), we can calculate the X values.
# Z=(X- ??) / ?? 
# For Probability 0.005 the Z Value is -2.57 (from Z Table).
qnorm(.005)

# Z * ?? + ?? = X
a= (-2.57)*20+100     # Z(+0.005)*20+100 = (-2.57)*20+100 = 48.6
b= -(-2.57)*20+100    # Z(-0.005)*20+100 = -(-2.57)*20+100 = 151.4
a_b <- data.frame(a,b)
a_b # d. 48.5, 151.5  


# 5.  Consider a company that has two different divisions. The annual profits from the two divisions are 
# independent and have distributions Profit 1  ~ N(5, 3 2 ) and Profit 2  ~ N(7, 4 2 ) respectively. Both the 
# profits are in $ Million. Answer the following questions about the total profit of the company in 
# Rupees. Assume that $1 = Rs. 45 
# A.  Specify a Rupee range (centered on the mean) such that it contains 95% probability for the 
# annual profit of the company. 
# B.  Specify the 5 th  percentile of profit (in Rupees) for the company 
# C.  Which of the two divisions has a larger probability of making a loss in a given year? 