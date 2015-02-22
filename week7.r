# week 8
# Real-world data
# I could not read their entire files in the tutor, so 
# I created them the best I could.
piracy = read.csv("piracy.csv")
gdp = read.table("gdp.txt",sep="\t",header=TRUE)

# we'll merge the frames on the country names
countries = merge(x=gdp, y=piracy)
countries
plot(countries$GDP,countries$Piracy)

# It looks like there's a negative correlation between 
# wealth and piracy - generally, the higher a
# nations GDP, the lower percentage of software
# installed that's pirated.  But do we have
# enough data to support this connection? Is there
# really a connection at all?

# R can test for correlation between two vectorss with the
# the cor.test function.  Try calling it on GDP
# and piracy columns of the countries data frame:
cor.test(countries$GDP, countries$Piracy)

# and here is where my sample data fails.

# The key result we're interested in is the "p-value".
# Conventionally, any correlation with a p-value
# less than 0.05 is considered statistically significant,
# and this sample data's p-value is definitely
# below that threshold. In other words, yes, these
# data do show a statisically significant negative
# correlation between GDP and software piracy.

# we have more countries represented in our GDP
# data than we do in our piracy rate data.  If 
# we know a country's GDP, can we use that to 
# estimate its piracy rate?

# We can, if we calculate the linear model that
# best represents all out data points (with a certain
# degree of error).  The lm function takes a model 
# formula, which is represented by a response
# variable (piracy rate), and a tilde character (~),
# and a predictor variable (GDP).(Note that the response
# variable comes first.)

# Try calculating the linear model for piracy rate by GDP,
# and assign it to the line variable:
line = lm(countries$Piracy ~ countries$GDP)

# You can draw a line on the plot by passing it to the
# abline function.
abline(line)

# Now, if we know a country's GDP, we should be able to make
# a reasonable prediction of how common piracy is there!

# ggplot2

# The functionality we've shown you so far is all included with 
# R by default. And its pretty powerful, isn't it?  But in 
# case the default installation doesn't include the function
# that you need, there are still more libraries available on the
# Comprehensive R Archive Network, or CRAN.  They can add anything from
# new statistical functions to better graphics capabilities.
# Better yet, installing any of them is just a command away.

# Let's install the popular ggplot2 graphics package.  Call the
# install.packages function with the package name in a string:

# JFD Commented out because I don't want to install it each time 
# I run this code.
#install.packages("ggplot2")

# You can get help for a package by calling the help function 
# and passing the package name in the package argument.  Try
# displaying the help for the "ggplot2" package:
help(package = "ggplot2")

# Here's a quick demo of the power you've just added to R.
# To use it, let's revisit some data from a previous chapter.
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)

# The qplot function is a commonly-used part of ggplot2.
# We'll pass the weights and values of our cargo to it,
# using the chest types vector for the color argument:
library(ggplot2)
qplot(weights, prices, color=types)


