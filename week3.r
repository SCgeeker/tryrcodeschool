# Week 3

# Matrix Operations.

# Lets make a matrix 3 rows high by 4 columns
# wide with all the its fields set to 0
matrix(0,3,4)

# To init a matrix value,use a vector
# a 3x4 requires 12-item vector
a <- 1:12

# print the value of 1
print(a)

# now init a matrix with a
matrix(a,3,4)

# You can also re-shape the vector
# into a matrix
plank <- 1:8


# The dim assignment function sets dimensions for
# a matrix. It accepts a vector with the number
# of rows and the number of columns to assign
# assign new dimensions to plank by passing a vector
# specifying 2 rows and 4 columns
dim(plank) <- c(2,4)

print(plank)

# another matrix
matrix(1,5,5)

# get the value from second row in the third column 
# from plank
plank[2,3]

# value from first row of fourth column
plank[1,4]

# to set a single value 
plank[1,4] <- 0

# Get the an entire row of a matrix by 
# omitting the column index.
# Get the second row
plank[2,]

# Get the fourth column
plank[,4]

# Get columns 2 through 4
plank[,2:4]

# Matrix Plotting

# Create a matrix which is 10x10 with elevation of 1
elevation <- matrix(1,10,10)

# create a hole
elevation[4,6] <- 0

# create a contour map of the values
contour(elevation)

# create a 3D perspective plot
persp(elevation)

# The perspective plot looks odd. This is because
# persp auto expands the view so that your highest
# value (the beach surface) is the very top.
#
# We can fix that by specifiying our own value for
# the expand parameter
persp(elevation, expand=0.2)

# R includes some sample data sets to play with.
# one of these is volcano a 3D map of a dormant
# volcano. Try to create a map of the volcano
contour(volcano)


# try perspective plot with vertical expansion limited
# 1/5
persp(volcano,expand=0.2)


# the image functio will create a heat map
image(volcano)




