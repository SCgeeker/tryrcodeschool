# These are lessons  from campus.datacamp.com
# free-introduction to r

# these are the highlights I was unfamiliar with from before.

# Data Frames

####################################################

# What's a data frame?

# You may remember from the chapter about matrices
# that all the elements that you put in a matrix
# should be of the same type. Back then, your dataset
# on Star Wars only contained numeric elements.

#When doing a market research survey, however,
# you often have questions such as:

#'Are your married?' or 'yes/no' questions
# (= boolean data type)

#'How old are you?'
# (= numeric data type)

#'What is your opinion on this product?'
# or other 'open-ended' questions
# (= character data type)

#The output, namely the respondents' answers to the
# questions formulated above, is a dataset of
# different data types. You will often find
# yourself working with datasets that contain
# different data types instead of only one.

#A data frame has the variables of a dataset as
# columns and the observations as rows. This will
# be a familiar concept for those coming from
# different statistical software packages such
# as SAS or SPSS.
####################################################

# Quick, have a look at your dataset

# Wow, that is a lot of cars!
# Working with large datasets is not uncommon in
# data analysis. When you work with (extremely)
# large datasets and data frames, your first task as
# a data analyst is to develop a clear understanding
# of its structure and main elements. Therefore, it
# is often useful to show only a small part of the
# entire dataset.

#So how to do this in R?

#The function head() enables you to show the first
# observations of a data frame (or any R object you
# pass to it).

#Unoriginally, the function tail() prints out the
# last observations in your dataset.

#Both head() and tail() print a top line called the
# 'header', which contains the names of the different
# variables in your 

####################################################

# Have a look at the structure


# Another method that is often used to get a rapid
# overview of your data is the function str(). The
# function str() shows you the structure of your
# dataset. For a data frame it tells you:

#The total number of observations (e.g. 32 car types)

#The total number of variables (e.g. 11 car features)

#A full list of the variables names (e.g. mpg, cyl ... )

#The data type of each variable (e.g. num for car features)

#The first observations

#Applying the str() function will often be the first
# thing that you do when receiving a new dataset o
#r data frame. It is a great way to get more insight
# in your dataset before diving into the real analysis.
#######################################################

# Creating a data frame

# Since using built-in datasets is not even half the
# fun of creating your own datasets, the rest of this
# chapter is based on your personally developed dataset.
# So put your jet pack on because it is time for some
# good old fashioned space exploration!

#As a first goal, you want to construct a data frame
# that describes the main characteristics of eight
# planets in our solar system. According to your good
# friend Buzz, the main features of a planet are:

#The type of planet (Terrestrial or Gas Giant).

#The planet's diameter relative to the diameter of the Earth.

#The planet's rotation across the sun relative to that of the Earth.

#If the planet has rings or not (TRUE or FALSE).

#After doing some high-quality research on wikipedia,
# you feel confident enough to create the necessary
# vectors: planets, type, diameter, rotation and
# rings (see editor, note that an element of one
# vector is linked to the element of another vector
# based on its position).

#You construct a data frame with the data.frame
# function. As arguments, you should provide the
# above mentioned vectors as input that should
# become the different columns of that data frame.
# Therefore, it is important that each vector used to
# construct a data frame has an equal length. But do
# not forget that it is possible (and likely) that
# they have different types of data.

planets     <- c("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune");
type        <- c("Terrestrial planet","Terrestrial planet","Terrestrial planet","Terrestrial planet","Gas giant","Gas giant","Gas giant","Gas giant")
diameter    <- c(0.382,0.949,1,0.532,11.209,9.449,4.007,3.883); 
rotation    <- c(58.64,-243.02,1,1.03,0.41,0.43,-0.72,0.67);
rings       <- c(FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE);

# Create the data frame:
planets_df  <- data.frame(planets,type,diameter,rotation,rings)


#######################################################

# Selection of data frame elements (2)

# Instead of using numerics to select elements of a data
# frame, you can also use the variable names to select
# columns of a data frame.

#Maybe you want to select only the first 3 elements of
# the variable 'type'. One way to do this is:
planets_df[1:3,1].
# A possible disadvantage of this approach is that you
# have to know (or look up) the position of the variable
# 'type', which gets hard if you have a lot of variables.
# It is often easier to just make use of the variable
# name, e.g.
planets_df[1:3,"type"].
# The planets_df data frame from the previous exercise is pre-loaded: 
furthest_planets_diameter <- planets_df[3:8,"diameter"]


#######################################################

# Only planets with rings

# You will often want to select an entire column, namely
# one specific variable from a data frame. If you want
# to select all elements of the variable rings, both
# planets_df[,5] and planets_df[,"rings"] do the trick.

#However, there is a short-cut. Use the $-sign to tell
# R that it only has to look up all the elements of the
# variable behind the sign: data_frame_name$variable_name.

# Select the information on planets with rings:
planets_with_rings_df <- planets_df[rings_vector,]

#######################################################

# Only planets with rings but shorter

# So what exactly did you learn in the previous exercises?
# You selected a subset from a data frame ( planets_df )
# based on whether or not a certain condition was true
# (rings or no rings), and you managed to pull out all
# relevant data. Pretty awesome! By now, NASA is probably
# already flirting with your CV ;-).

# Now, let us move up one level and use the function
# subset(). You should see the subset() function as a
# short-cut to do exactly the same as what you did in the
# previous exercises.

subset(data_frame_name, subset = some.condition)

# The first argument of subset() specifies the dataset
# for which you want a subset. By adding the second
# argument, you give R the necessary information and
# conditions to select the correct subset. For example:
subset(planets_df, subset=(planets_df$rings == TRUE))

# R will give you exactly the same result as you got in
# the previous exercise. But this time without needing the rings_vector!

# Planets that are smaller than the Earth:
small_planets_df  <- subset(planets_df,subset=(planets_df$diameter<1))


#######################################################

# Sorting

# Making and creating rankings is one of mankind's favorite
# affairs. These rankings can be useful (best universities
# in the world), entertaining (most influencial moviestars)
# or pointless (best 007 look-a-like). Up to you for which
# purpose you want to use your R skills ;-).

# In data analysis you will sort your data according to a
# certain variable in the dataset. In R, this is done with
# the help of the function order().

order()
# is a function that gives you the position of each
# element when it is applied on a variable. Let us look at
# the vector a: 
a <- c(100,9,101). 

# Now order(a) returns 2,1,3. Since 100 is the second largest
# element of the vector, 9 is the smallest element and 101
# is the largest element.

# Subsequently,
a[order(a)]

# will give you the ordered vector 9,100,101, since it first
# picks the second element of a, then the first and then the
# last. Got it? If you are not sure, use the console to play
# with the order() function.`

#######################################################

# Sorting your data frame

# Alright, now that you understand the order() function, let
# us do something useful with it. You would like to rearrange
# your data frame such that it starts with the largest planet
# and ends with the smallest one. A sort on the column
# diameter, as you will.

# What is the correct ordering based on the planets_df$diameter variable?
positions <- order(planets_df$diameter, decreasing=T)  

# Create new "ordered" data frame:
largest_first_df <- planets_df[positions,]


#######################################################
#######################################################
#######################################################
#######################################################
#######################################################
#######################################################
#######################################################




