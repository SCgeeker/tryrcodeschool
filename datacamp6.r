# These are lessons  from campus.datacamp.com
# free-introduction to r

# these are the highlights I was unfamiliar with from before.

# Lists

####################################################

# Lists, why would you need them?

# Congratulations! At this point in the course you
# are already a (semi-)expert in:

#Vectors (one dimensional array) hold numeric, character
# or logical values. The elements in one vector all have
# the same datatype.

#Matrices (two dimensional array) hold numeric, character
# or logical values. The elements in one matrix all
# have the same datatype.

#Data frames (two-dimensional objects) hold numeric,
# character or logical values. Within a column all elements
# have the same data type, but different columns can be of different data type.

#Pretty sweet for an R newbie, right? ;-)
####################################################

# Lists, why would you need them? (2)

# A list in R is similar to your to-do list at work or
# school: the different items on that list most likely
# differ in length, characteristic, type of activity
# that has to do be done, ...

#A list in R allows you to gather a variety of objects
# under one name (that is, the name of the list) in an
# ordered way. These objects can be matrices, vectors,
# data frames, even other lists, etc. It is not even
# required that these objects are related to each other.
# Just like your to-do list :-).

#Maybe you can even say that a list is a kind of super data type ;-)


####################################################

# Creating a list

# Let us create our first list! To construct a list you
# use the function list():
my_list <- list(component1, component2...)

# The arguments to the list function are the list components.
# Remember, these components can be a collection of matrices, vectors...`

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol=3)
# First 10 elements of the built-in data frame mtcars
my_df     <- mtcars[1:10,] 

# Construct list with these different elements:
my_list <- list(my_vector,my_matrix,my_df)


#######################################################

# Creating a named list

# Well done! Let us keep this train going!

# Just like on your to-do list, you want to avoid not
# knowing or remembering what the components of your
# list stand for. That is why you should give names to them:
list(name1=your.component1, name2=component2,?)

#This creates a list with the components "name1"
# and "name2" and so on.

# Construct list with these different elements:
my_list <- list(VECTOR=my_vector,MATRIX=my_matrix,DATAFRAME=my_df)

#######################################################

# Creating a named list (2)

# Being a huge movie fan (remember your job at LucasFilms),
# you decide to start storing information on good movies
# with the help of lists.

#Start by creating a list for the movie "The Shining".
# We have already created the variables actors and reviews
# in your R workspace. Type actors or reviews in the
# console to check these.

# Create the named vector shining_list
# The actors and reviews vectors are loaded in the workspace
shining_list <- list(moviename="The Shining",actors=actors,reviews=reviews)

#######################################################

# Selecting elements from a list

# Your list will often be built out of numerous elements and
# components. Therefore, getting a single element, multiple
# elements, or a component out of it is not always straightforward.

# One way to select a component is using the numbered position
# of that component. For example, to "grab" the first component
# of shining_list you type
shining_list[[1]].

# (Remember, to select elements out of a data set you use
# square brackets [ ] ) A quick way to check this out is
# typing it in the console.

# Another way to check is to refer to the names of the
# components.
shining_list[["reviews"]]
# selects the reviews data frame. The same is true for
# the shorter version
shining_list$reviews.

# Besides selecting components, you often need to select
# specific elements out of these components. For example,
# with
 shining_list[[2]][1]
# you select from the second component
# actors (= shining_list[[2]] ) the first element ( [1] ).
# When you type this in the console, you will see the
# answer is Jack Nicholson.

# The shining_list is already loaded
# Select from the shining_list:
last_actor    <- shining_list[["actors"]][[5]]
second_review <- shining_list[["reviews"]][2,]

#######################################################

# Adding more movie information to the list

# Being proud of your first list, you shared it with the
# members of your movie hobby club. However, one of the
# senior members, a guy named M. McDowell, noted that you
# forgot to add the release year. Given your ambitions to
# become next year's president of the club, you decide to
# add this information to the list.

# In order to conveniently add elements to lists you use
# the concatenate function c():
c(list1,some.object)

# If you want to give the new list item a name, you just add
# this to the function: 
c(list1,new.item.name=some.object).

actors      <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
sources     <- c("IMDb1","IMDb2","IMDB3")
comments    <- c("Best Horror Film I Have Ever Seen","A truly brilliant and scary film from Stanley Kubrick","A masterpiece of psychological horror")
scores      <- c(4.5,4,5)
reviews     <- data.frame(scores,sources,comments)

# Create named list 
shining_list <- list(moviename="The Shining", actors=actors, reviews=reviews)

# We forgot something: add the year to shining_list! Add your code below:
shining_list <- c(shining_list,year=1980)

# Have a look at shining_list.
str(shining_list)


#######################################################


#######################################################



#######################################################
#######################################################
#######################################################
#######################################################
#######################################################
#######################################################
#######################################################




