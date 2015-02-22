# week 6
# Data Frames

# The weights, prices and types data structures
# are all deeply tied together if you think abut it.
# if you add a new wieght sample, you need to remeber to
# add a new price and type or risk everything falling out
# of sync.  To avoid trouble, it would be nice if
# we could tie all these variables together in a single
# data structure.

# Fortunately, R has a structure for just this purpose:
# the data frame.  You can think of a data frame as something
# akin to a database table or an excel spreadsheet.  It
# has a specific numbers of columsn, each of which is expected
# to contain values of a particular type. It also
# has an indeterminate number of rows - sets of related values
# for each column.

# data frames
# Our vectors with treasure chest data are perfect candidates for
# conversion to a data frame.  And its easy to do.  Call the 
# data.frame function and pass weights, prices, and types as
# the arguments.  Assign the result to the treasure variable:
weights = c(300,200,100,250,150)
prices = c(9000,5000,12000,7500,18000)
chests = c('gold','silver','gems','gold','gems')
types = factor(chests)

treasure = data.frame(weights,prices,types)

# Now, try printing treasure to see its contents:
print(treasure)

# there's your new data frame, neatly organized into rows
# with column names (derived from the variable names) across
# the top.

# Data Frame Access
# Just like matrices, its easy to access individual protions of
# a data frame.

# You can get individual columsn by providing their index number
# in double-brackets.  Try getting the second column(prices)
# of treasure:
treasure[[2]]

# you can also do by column name
treasure[["prices"]]

# Typing all those brackets can get tedious, so there's
# also a shorthand notation: the data frame, a dollar sign,
# and the column name (without quotes).  Try using it to 
# get the "prices" column:
treasure$prices

# The types column has a summary value.  Try it
treasure$types
# Notice, the levels additional output.

# you can list files
list.files()

# Our targets.csv file is in CSV (Comma Seperated Values) format
# exported by many popular spreadsheet programs. Here is what
# its content looks like:

# You can load a file's content into a data frame by passing
# the filename to the read.csv funtion with the "targets.csv"
# file:
read.csv("targets.csv")

# The "infantry.txt" file has a similar format, but its fields
# are seperated by tab characters rather than commas.

# For files that uses seperator strings other than commas,
# you can use the read.table function.  The sep argument
# defines the separator character, and you can specify a 
# a tab character with "\t".
read.table("infantry.txt", sep="\t")

# Notice the "v1" and "v2" column headers?  The first line is not
# automatically treated at column headers with read.table.
# This behaviour is controlled by the header argument. Call
# read.table again, setting header to true.
read.table("infantry.txt", sep="\t", header=TRUE)

# Merging Data Frames

# We want to loot the city with the most treasure and the
# fewest guards.  Right now, though, we have to look at 
# both files and match up the rows. It would be nice if all
# the data for a port were in one place...

# R's merge function can accomplish precisely that. It joins
# two data frames together, using the
# contents of one or more columns.  First, we're going to 
# store those file contents in two data frames
# for you, targets and infantry.

# The merge function takes arguments with an x frame(targets)
# and a y frame (infantry).  By default, it joins the frames on
# columns with the same name(the two Port columns).  See if
# you can merge the two frames:
targets = read.csv("targets.csv")
infantry =read.table("infantry.txt", sep="\t", header=TRUE)
merge(x=targets,y=infantry)

