# These are lessons  from campus.datacamp.com
# free-introduction to r

# these are the highlights I was unfamiliar with from before.

# Factors

####################################################
# The term factor refers to a statistical data type used to 
# store categorical variables. The difference between a 
# categorical variable and a continuous variable is that a 
# categorical variable can belong to a limited number of 
# categories. A continuous variable, on the other hand, 
# can correspond to an infinite number of values.

# It is important that R knows whether it is dealing with
# a continuous or a categorical variable, as the statistical
# models you will develop in the future treat both types
# differently. (You will see later why this is the case.)

#A good example of a categorical variable is the variable
# 'Gender'. A human individual can either be "Male" or
# "Female", making abstraction of intersexes. So here "Male"
# and "Female" are the only two values of the categorical
# variable "Gender", and every observation can be assigned
# to either the value "Male" of "Female".

####################################################
# What's a factor and why would you use it? (2)

# To create factors in R, you make use of the function
#  factor(). First thing that you have to do is create
#  a vector that contains all the observations that
#  belong to a limited number of categories. For example,
#  gender_vector contains the sex of 5 different
#  individuals:
gender_vector <- c("Male","Female","Female","Male","Male").

# It is clear that there are two categories, or in
#  R-terms 'factor levels', at work here: "Male" and "Female".

# The function factor() will encode the vector as a
#  factor:
factor_gender_vector <- factor(gender_vector).


####################################################
# What's a factor and why would you use it? (3)

# There are two types of categorical variables:
# a nominal categorical variable and an ordinal
# categorical variable.

#A nominal variable is a categorical variable
# without an implied order. This means that it is
# impossible to say that 'one is worth more than
# the other'. For example, think of the categorical
# variable animals_vector with the categories
# "Elephant", "Giraffe", "Donkey" and "Horse". Here,
# it is impossible to say that one stands above or
# below the other. (Note that some of you might disagree ;-) ).

#In contrast, ordinal variables do have a natural
# ordering. Consider for example the categorical
# variable temperature_vector with the categories:
# "Low", "Medium" and "High". Here it is obvious that
# "Medium" stands above "Low", and "High" stands above "Medium".


animals_vector <- c("Elephant", "Giraffe", "Donkey","Horse")
temperature_vector <- c("High","Low","High","Low","Medium")

factor_animals_vector <- factor(animals_vector)
factor_temperature_vector <- factor(temperature_vector, order=TRUE, levels=c("Low","Medium","High") )

#######################################################

# Factor levels

# When you first get a data set, you will often notice
# that it contains factors with specific factor levels.
# However, sometimes you will want to change the names
# of these levels for clarity or other reasons. R
# allows you to do this with the function levels():
levels(factor_vector) <- c("name1","name2",...)

#A good illustration is the raw data that is provided
# to you by a survey. A standard question for every
# questionnaire is the gender of the respondent. You
# remember from the previous question that this is a
# factor and when performing the questionnaire on the
# streets its levels are often coded as "M" and "F".
survey_vector <- c("M","F","F","M","M")

#Next, when you want to start your data analysis,
# your main concern is to keep a nice overview of all
# the variables and what they mean. At that point,
# you will often want to change the factor levels to
# "Male" and "Female" instead of "M" and "F" to make
# your life easier.

survey_vector <- c("M","F","F","M","M")
factor_survey_vector <- factor(survey_vector)

# Change factors from F,M to Female, Male
levels(factor_survey_vector) <- c("Female","Male")



#######################################################

# Summarizing a factor

# After finishing this course, one of your favourite
# functions in R will be summary(). This will give you
# a quick overview of some_variable:
summary(some_variable)

#Going back to our survey, you would like to know how
# many "Male" responses you have in your study, and
# how many "Female" responses. The summary() function
# gives you the answer to this question.

#######################################################

# Factor levels do not compare

survey_vector <- c("M","F","F","M","M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female","Male")

# Battle of the sexes: 
# Male
factor_survey_vector[1] 
# Female
factor_survey_vector[2] 
# Male larger than female?
factor_survey_vector[1] > factor_survey_vector[2] 

#######################################################

# Ordered factors

# Since "Male" and "Female" are unordered (or nominal)
# factor levels, R returns an error message. As seen
# before, R attaches an equal value to the levels for
# such factors.

#But this is not always the case! Sometimes you will
# also deal with factors that do have a natural ordering
# between its categories. If this is the case, we have
# to make sure that we pass this information to R...

#Let us say that you are leading a research team of
# five data analysts and that you want to evaluate their
# performance. To do this, you track their speed,
# evaluate each analyst as "Slow", "Fast" or
# "Ultra-fast", and save the results in speed_vector.

#######################################################

# speed_vector should be converted to an ordinal factor
# since its categories have a natural ordening. By
# default, the function factor() transforms speed_vector
# into an unordered factor. To create an ordered factor,
# you have to add two additional arguments:
factor(some_vector,ordered=TRUE,levels=c("Level 1","Level 2"...))

# By setting the argument ordered=TRUE in the function
# factor(), you indicate that the factor is ordered.
# With the argument levels you give the values of the
# factor in the correct order, e.g.
# levels <- c("Low","Medium","High").

speed_vector <- c("Fast","Slow","Slow","Fast","Ultra-fast") 
factor_speed_vector <- factor(speed_vector,ordered=T,levels=c("Slow","Fast","Ultra-fast"))  

# R prints automagically in the right order
summary(factor_speed_vector) 

#######################################################

# Comparing ordered factors

# Having a bad day at work, 'data analyst number two'
#  enters your office and starts complaining that
#  'data analyst number five' is slowing down the entire
#  project. Since you know that 'data analyst number two'
#  has the reputation of being a smarty-pants, you first
#  decide to check if his statement is true.

# The fact that factor_speed_vector is now ordered enables
#  us to compare different elements (the data analysts in
#  this case). You can simply do this by using the
#  well-known operators.
speed_vector <- c("Fast","Slow","Slow","Fast","Ultra-fast")
factor_speed_vector <- factor(speed_vector, ordered=TRUE, levels=c("Slow","Fast","Ultra-fast"))

# Your code below
compare_them <- speed_vector[2] > speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
compare_them

#######################################################
#######################################################
#######################################################
#######################################################
#######################################################
#######################################################
#######################################################




