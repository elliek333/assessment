# Title: Conditional Column Addition Function
#
# Function that adds a column to a data table unless that column already exists
# Makes it idempotent, can be called multiple times without error

# @param data: the table you want to add the column too
# @param cname: the name of the column, please note you must have already assigned this
# as a value
#
# @example:
#
# # Load in the mtcars data set 
# data(mtcars)
#
# Take a look at the data set
# head(mtcars, 4)
# 
# Currently the data looks like this:
# mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4      21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag  21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710     22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive 21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#
# Creating a value to add to the data set as a column
# x <- "x"
#
# Using the fnconcol function
# mtcars <- fnconcol(mtcars, x)
#
# output:
# mpg cyl  disp  hp drat    wt  qsec vs am gear carb  x
# Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4 NA
# Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4 NA
# Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1 NA
# Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1 NA
#
# Using the function again, this should not add a second column also called x as that 
# already exists:
# mtcars <- fnconcol(mtcars, x)
#
# output:
# mpg cyl  disp  hp drat    wt  qsec vs am gear carb  x
# Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4 NA
# Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4 NA
# Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1 NA
# Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1 NA
#
#This avoids errors and keeps data sets tidy
#
# This function is taken from: 
# https://stackoverflow.com/questions/45857787/adding-column-if-it-does-not-exist
# Date last accessed: 5/01/2021
# It has been modified slightly with names that more clearly state their function (in my opinion
# at least) but the main job of the function is unchanged.

fnconcol <- function(data, cname) {
  checkcol <-cname[!cname%in%names(data)]
  
  if(length(checkcol)!=0) data[checkcol] <- NA
  data
}