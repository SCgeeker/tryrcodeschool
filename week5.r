# week 5  
# Factors

chests = c('gold','silver','gems','gold','gems')
types = factor(chests)
# notice that types is "enums" they are not 
# quoted strings.
print(chests)
print(types)

# take a look at the underlying integers
as.integer(types)

# you can get only the factor levels  like
levels(types)

# try calling plot to graph chests by weight and value
weights = c(300,200,100,250,150)
prices = c(9000,5000,12000,7500,18000)
plot(weights,prices)

# we can't tell which chest is which though.
# We can use different plot characters for
# each type by converting the factors to integers
# and passing it to the pch argument of plot
plot(weights,prices,pch=as.integer(types))

# "circle, "Triangle" and "Plus Sign" aren't great descriptions
# Add a legend to show what the symbols mean
legend("topright",c("gems","gold","silver"),pch=1:3)
# seems to me you could do this using the types. not sure 
# why he did it like this. 

# Ahh, here he does it correctly.
# If you hard-code the levels and plot characters, you'll have
# to update them every time you change
# the plot factor. Instead its better to derive them by 
# using the levles function on your factor
legend("topright",levels(types),pch=1:length(levels(types)))

       