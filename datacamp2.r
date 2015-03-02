# These are lessons  from campus.datacamp.com
# free-introduction to r

# these are the highlights I was unfamiliar with from before.

# Vectors

# The modulus operator is %%
17 %% 4

# decimal values like 4.5 are called numerics

# Natural numbers like 4 are called integers

# Boolean values like TRUE or FALSE are called logical

# Text values are called characters

# You can check the data type of a variable
class(some_variable_name)

# Poker winnings from Monday to Friday
poker_vector <- c(140,-50,20,-120,240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)

# Add your code here
days_of_week = c('Monday','Tuesday','Wednesday','Thursday','Friday')
names(poker_vector) = days_of_week
names(roulette_vector) = days_of_week
# find sum
total_vector = poker_vector + roulette_vector
# result is c(5,7,9)
# all semi-equivalent
total_vector = sum(poker_vector,roulette_vector)
total_vector = sum(poker_vector + roulette_vector)
# these are both 21

# two ways to find the values from Tuesday thru Thursday
poker_midweek = poker_vector[c(2:4)]
# and 
poker_midweek = poker_vector[c(2,3,4)]

#
# Can use days of week to select terms 
#
# Poker winnings from Monday to Friday
poker_vector <- c(140,-50,20,-120,240)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)
# Name poker_vector and roulette_vector
days_vector <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# gains for Monday thru Wednesday
average_midweek_gain <- mean(poker_vector[days_vector[c(1:3)]])

#
# Find the days where you won
#


# Poker winnings from Monday to Friday
poker_vector <- c(140,-50,20,-120,240)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)
# Name poker and roulette
days_vector <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0
# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

