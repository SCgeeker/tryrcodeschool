# These are lessons  from campus.datacamp.com
# free-introduction to r

# these are the highlights I was unfamiliar with from before.

# Matrices

####################################################
# Construction of a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9,byrow=TRUE,nrow=3)

####################################################
# Box office Star Wars: In Millions!
# The first element: US, the second element: Non-US 
new_hope <- c(460.998007, 314.4)
empire_strikes <- c(290.475067, 247.900000)
return_jedi <- c(309.306177,165.8)

# Add your code below to construct the matrix
star_wars_matrix <- matrix(c(new_hope,empire_strikes,return_jedi),byrow=T,nrow=3)

####################################################
# Box office Star Wars: In Millions (!) 
# First element: US, Second element: Non-US 
new_hope <- c( 460.998007, 314.4)
empire_strikes <- c(290.475067, 247.900000)
return_jedi <- c(309.306177,165.8)

# Construct the matrix
star_wars_matrix <- matrix(c(new_hope,empire_strikes,return_jedi), nrow=3, byrow=TRUE)

# Add your code here such that rows and columns of star_wars_matrix have a name!
colnames(star_wars_matrix) = c("US","non-US")
rownames(star_wars_matrix) = c("A New Hope","The Empire Strikes Back", "Return of the Jedi")


#######################################################
# Box office Star Wars: In Millions (!) 
# Construct the matrix: 
box_office_all <- c(461, 314.4,290.5, 247.9,309.3,165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles))

# Your code here
worldwide_vector <- rowSums(star_wars_matrix)

#######################################################
# Box office Star Wars: In Millions (!) 
# Construct the matrix
box_office_all <- c(461, 314.4,290.5, 247.9,309.3,165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
# cbind appends cols
# rbind appends rows.
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)



#######################################################
# Print box office Star Wars: In Millions (!) for 2 trilogies
all_wars_matrix

total_revenue_vector <- colSums(all_wars_matrix)

#######################################################
# calculate avg of movies for non-us 
# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4,290.5, 247.9,309.3,165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles)) 

star_wars_matrix 

# your code here
non_us_all  <- mean(star_wars_matrix[,2]) 
# your code here
non_us_some <- mean(star_wars_matrix[1:2,2])

#######################################################
# Box office Star Wars: In Millions (!) 
# Construct the matrix: 
box_office_all <- c(461, 314.4,290.5, 247.9,309.3,165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles)) 
ticket_prices_matrix <- matrix(c(5,5,6,6,7,7), nrow=3, byrow=TRUE, dimnames=list(movie_names,col_titles)) 

# Your code below:
visitors <- star_wars_matrix/ticket_prices_matrix
# Your code below:
average_us_visitor <- mean(visitors[,1])
# Your code below:
average_non_us_visitor <-mean(visitors[,2])




