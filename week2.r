# Week 2

# vector values can be number strings or logical values
# as long as they are ll the same type.
c(4,7,9)

# vector of strings
c('a','b','c')

# vectors can not hold values with different modes (types)
# try mixing modes and see that all values
# are converted to a single mode (characters)
c(1,TRUE,"Three")

# If you need a vector with a sequence of numbers,
# you can create it with start:end notation.
5:9

# A more versitle way to make sequences is to 
# call the seq function.
seq(5,9)

# You can use a step funtion other than 1
seq(5,9,0.5)

# a downward seq
9:5

# you can access individual vectors like so
sentence <- c('walk','the','plank')
sentence[3]

# R starts it indices count at 1
sentence[1]

# set the third word to 'dog'
sentence[3] <- 'dog'

# if you add new vectors to the end, it will grow the vector
sentence[4] <- 'to'


# You can use a vector within the square brackets to access
# multiple values, Try getting the first and third words.
# remember c(1,3) is a vector like {1,3} in c
sentence[c(1,3)]

# You can access a range of values. Get the second thru
# fourth words
sentence[2:4]

# You can also set ranges of value, just provide 
# the values in a vector. Add words 5 thru 7
sentence[5:7] <- c('the','poop','deck')

# vector names
"For this challenge, we will make a 3-item vector for you
and store it in the ranks variable.

You can assign names to a vector's elements by pass a second
vector filed with names to the names assignment function,
like this"
ranks <- c(1,2,3)
names(ranks) <- c('first','second','third')

"Assigning names for a vector can act as useful lablels
for the data. Below, you can see what our
vector looks like now. You can also use the names
to access the vector's values. "
ranks
ranks['first']

# Now set the value for the "third" rank to 4 using
# the name rather than the position.
ranks['third'] <- 4

# plotting one vector
# The barplot function draws a bar chart with a vectors values.
# We'll make a new vector for you and store it in vesselsSunk 
# variable
vesselsSunk <- c(4,5,1)
# Now try passing the vector to the barplot function
barplot(vesselsSunk)

# If you assign names to the vectors values, R will use
# those names as labels on the bar plot.
# Let's use the names assignment function again.
names(vesselsSunk) <- c('England','France','Norway')

# Now if you call barplot with the vector again,
# you will see the labels.
barplot(vesselsSunk)

# Now try barplot on a vector of integers from 1 to 100
barplot(1:100)


# Vector Math

# If you add a scalar to a vector, the scalar
# will be added to each value in the vector
# returning a new vector with the results.
a <- c(1,2,3)
a+1

# The same is true of division, multiplication or any other 
# basic arithmetic.
a/2
a*2

# create a second vector and add them together
# it does a vector add operation
b <- c(4,5,6)
a+b
b-a


# you can also take two vectors and compare each item.
# see which values in the a vector are equal to
# to those in a secnd vector
a == c(1,99,3)

# Notice that R didn't test wheter the whole vectors were
# eaul; it checked each value in the a vector
# against the value at the same index in our new vector

# check if each value in the a vector is less
# than the corresponing value in another vector
a < b

# functions that normally work with scalars can 
# operate on each element of a vector too.
# Try getting the sine of each value in our vector
sin(a)
sqrt(a)


## Scatter Plots

# The plot function takes two vectors, one for x and
# one for y and draws a graph of them

# Let's drw a graph showing the relationship of numbers
# and their sines.

# First, we'll need some sample data.  We'll create
# a vector for you with some fractional values
# between 0 and 20 and store it in the x variable
x<-seq(1,20,0.1)
y<-sin(x)


# Then call plot
plot(x,y)

# Notice on the graph that values from the first argument (x)
# are used for the horizontal axis, and values from the 
# second (y) for the vertical

# create a vector with some negative and positive values
values<- -10:10

#  create a second vector with abs values of first
absolutes <- abs(values)

# try plotting with values on x axis and absolutes on y
plot(values,absolutes)


# Sometimes when working with sample data, a given values
# isn't available. Use the NA value to indicate that a value
# is nill. Many functions that work with vectors treat
# this value specially.
a<- c(1,3,NA, 7, 9)
sum(a)

# The sum is NA, since by default, one of the values was NA.
# We can tell sum (and many other functions) to remove
# NA values from the result

# use help(sum) to see how to overide NA

# then do sum with overide
sum(a,na.rm=TRUE)




