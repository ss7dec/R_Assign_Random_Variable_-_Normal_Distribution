####### Random variable and Normal Distribution ######

# 1.  The time required for servicing transmissions is normally distributed 
#with = 45 minutes and 8 minutes. The service manager plans to have work begin 
#on the transmission of a customer's car 10 # minutes after the car is dropped 
#off and the customer is told that the car will be ready within 1 # hour from 
#drop-off. What is the probability that the service manager cannot meet his 
#commitment?  
# A.  0.3875    
# B.  0.2676    
# C.  0.5    
# D.  0.6987  

##### Ans:::::

X=Random_variable 
x=probability
??=Mean
?? = Standard_Deviation
p=probability

# Let X denote the random time required for servicing a car.
# To find out the probability value, it is denoted as  p(X+10???60) = p(X???50).


# By using p-norm() then------ 

round(pnorm(q=50, mean=45, sd= 8, lower.tail = FALSE),3)

#n Alternative Method by using Z-value 
# Formula for calculating z-score = (x-??)/??

z_value <- (50-45)/8  
# Then P (X???50) = P(Z???0.625) = 0.265986 from the Z-table.
pnorm(-abs(z_value))


# Hence, the probability that the service manager cannot meet his commitment is 
# B  i.e. 0.2676 .
# In brief, 26.6% probability is there that the service manager cannot meet his 
# commitment.

####################################################################################

# 2.  The current age (in years) of 400 clerical employees at an insurance claims processing center is 
# normally distributed with mean 38 and Standard deviation = 6. For each statement below, 
# please specify True/False. If false, briefly explain why. 
# A.  More employees at the processing center are older than 44 than between 38 and 44. 
# B.  A training program for employees under the age of 30 at the center would be expected to 
# attract about 36 employees. 


#######Ans::::
# Given data---
n= 400
?? = 38
?? = 6

# 2A------
round(pnorm(q=44, mean=38, sd= 6, lower.tail = FALSE),3)

# The outcome depicts that 15.9% chances of employees ages could be older than 44 years and 
# therefore the above statement is False.

# 2B--------------

round(pnorm(q=36, mean=38, sd= 6, lower.tail = TRUE),3)

# In brief, 36.9% of the employees ages could lie under the age of 30. Hence, the centre
# would be able to attract about 36 employees is True.

##############################################################################

# 3.  If X 1  ~ N(??, ?? 2 ) and X 2  ~ N(??, ?? 2 ) are iid normal random variables, then what is the 
# difference between 2 X 1  and X 1  + X 2 ? Discuss both their distributions and parameters.        

# Ans:
#Linear combinations
#• If X ∼ N(µ1, σ2 1), and Y ∼ N(µ2, σ2 2) are two independent R.Vs then X + Y ∼N(µ1 + µ2, σ2
#   1 + σ
#   2
#   2) , 
#and X − Y ∼ N(µ1 − µ2, σ2
#                   1 + σ
#                   2
#                   2)

#If Z = aX + bY , where X and Y are as defined above, i.e Z is linear combination of
#X and Y , then Z ??? N(aµ1 + bµ2, a2??
#                       2
#                       1 + b
#                       2??
#                       2
#                       2)


# The above property extends to n independent normal random variables, i.e if X1, X2, ...Xn
#are i.i.d normal random variables then S = X1 + X2 + ... + Xn is also Normal random
#variable with µ = E(X) = Pµi and ??
# 2 = V ar(X) = P??
# 2
                       
# When you add independent distributions (x1+x2) their variances add up. 
# But when you add fully correlated distributions (x1+x1) their standard 
# deviations add up                       
                       

######################################################################################

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

###### Ans::::::::
qnorm(.005)

# For Probability 0.005 the Z Value is -2.57 (taken from Z Table).

# Z * ?? + ?? = X
m = (-2.57)*20+100     # Z(0.005)*20+100 = (-2.57)*20+100 = 48.6
n= -(-2.57)*20+100    # Z(-0.005)*20+100 = -(-2.57)*20+100 = 151.4
df_m_n <- data.frame(m,n)
df_m_n 

#
#Hence the answer is D: 48.65, 151.4  

#########################################################################################

# 5.  Consider a company that has two different divisions. The annual profits from the two divisions are 
# independent and have distributions Profit 1  ~ N(5, 3 2 ) and Profit 2  ~ N(7, 4 2 ) respectively. Both the 
# profits are in $ Million. Answer the following questions about the total profit of the company in 
# Rupees. Assume that $1 = Rs. 45 
# A.  Specify a Rupee range (centered on the mean) such that it contains 95% probability for the 
# annual profit of the company. 
# B.  Specify the 5 th  percentile of profit (in Rupees) for the company 
# C.  Which of the two divisions has a larger probability of making a loss in a given year?

