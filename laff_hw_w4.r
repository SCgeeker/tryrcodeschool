# 					today
#			       sunny	cloudy	rainy	
# tomorrow
#	sunny	     .4		.3		.1
#	cloudy	   .4		.3		.6
#	rainy	     .2		.4		.3

weather <- matrix(1,3,3)

colnames(weather)<-c('sunny today','cloudy','rainy')
rownames(weather)<-c('sunny','cloudy','rainy')
 
weather[1,] <- c(.4,.3,.1)
weather[2,] <- c(.4,.3,.6)
weather[3,] <- c(.2,.4,.3)



#If today is sunny, what is the probability that the 
# day after tomorrow is:
#sunny?
weather[,1] %*% weather[1,]

#cloudy?
weather[,1] %*% weather[2,]
#rainy?
weather[,1] %*% weather[3,]

# the prob that it will be sunny the day after tomorrow
# and sunny tomorrow is 0.4 * 0.4

# the prob that it will be sunny the day after tomorrow
# and cloudy tomorrow is 0.3 * 0.3

# The prob that it will be sunny the day after tomorrow 
# and rainy tomorrow is 0.1 * 0.2

# thus, the prob that given today its sunny, the day
# after tomorrow is sunny is
# 0.4 * 0.4 + 0.3 * 0.4 + 0.1 * 0.2 = 0.3

# Notice this is the inner product of the vector that
# is row "Tomorrow is sunny" and the column
# "Today is cloudy"
weather[1,] %*% weather[,2]
weather[1,] %*% weather[,1]

0.40 * 0.40 + 0.30 * 0.40 + 0.10 * 0.20

