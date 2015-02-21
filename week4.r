# Week 4
# Summary Statistics
# mean, median, Standard Deviation

# mean

# Determining the health of the crew is an important
# part of any inventory of the ship. Heres a vector
# containing the number of limbs each member has left
# along with their names

limbs <- c(4,3,4,3,2,4,4,4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook',
                  'Scooter', 'Dan', 'Mikey', 'Blackbeard')

# A quick way to assess our battel-readiness would bt
# to get the average of the crew's appendage counts.
# Statisticians call this the 'mean'. Call the mean
# function with the limbs vector
mean(limbs)

# Here is a barplot of that vector
barplot(limbs)

# If we draw a line of the plot representing the mean
# we can easily compare the various values
# to the average.  The abline function
# can take an h parameter with a values
# at which to draw a horizontal line,
# or a v parameter for a vertical line.
# when its called, it updates the previous
# plot.  Draw a horizontal line across the plot
# at the mean:
abline(h=mean(limbs))

# Let's say we gain a crew member that completely
# skews the mean.
limbs <- c(4,3,4,3,2,4,4,4,14)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook',
                  'Scooter', 'Dan', 'Mikey', 'Blackbeard',
                  'Davy Jones')
mean(limbs)
barplot(limbs)
abline(h=mean(limbs))

# For situations like this, its probably more useful to
# talk about the 'median' value. The median is 
# calculated by sorting the values and
# choosing the middle one (for sets with an even number
# of values the middle two values are average)

# Call the median function on the vector
median(limbs)

# that's more like it. Let's show the median on the 
# plot. Draw a line across the plot at the median
abline(h=median(limbs))


# Standard Deviation

# Some of the plunder from our recent raids has been
# worth less than what we're used to. Here's a vector
# with the values of our latest
# hauls:
pounds <- c(45000,50000,35000,40000,35000,45000,10000,15000)
barplot(pounts)
meanValue <- mean(pounds)
# lets see a plot showing the mean value
abline(h=meanValue)

# These results seem way below normal.  The crew wants
# to make Smitty, who picked the last couple ships
# to waylay, walk the plank.  But as he dangles over 
# the water, wily Smitty raises a question:
# What, exactly, is a 'normal' haul?

# Statisticans use the concept of 'standard deviation' 
# from the mean to describe the
# range of typical values for a data set.  For a group
# of numbers, it shows how much they typically vary from 
# the average value.  To calculate the standard deviation,
# you calculate the mean of the values, then subtract the mean
# from each number and square the result, then average those
# squares, and take the square root of that average.

# if that sounds like a lot of work, don't worry.  You are
# using R, and all you have to do is pass a vector the the
# sd function.  Try calling sd on the pounds vector now and
# assign the result to the deviation variable:
deviation <- sd(pounds)

# we will add a line on the plot to show one standard deviation
# above the standard deviation above the mean (the top of the
# the normal range)
abline(h = meanValue + deviation)

# hail to the sailor that brought us that 50K pound payload

# Now try adding a line on te plot to show one standard deviation
# below the mean (the bottom of the normal range)
abline(h = meanValue - deviation)

# we're risking being hanged by the Spanish for this?
# Sorry, smitty, you're shark bait.

