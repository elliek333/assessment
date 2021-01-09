# Title: Data Summary Function
#
# A function that summarizes a data set's mean, n, standard deviation,
# standard error, minimum value and maximum value of a given variable.
#
# @param df: data set you want to use.
# @param measure: variable which you want to summarize
# @param group: the variable you wish to group the summary data by
#
# @example
# Load in the mtcars data set 
# data(mtcars)
#
# Take a look at the data set
# head(mtcars, 6)
# 
# Use the data summary function
# data_summary(mtcars, mpg, cyl)
# 
# Output: 
# A tibble: 3 x 7
# cyl mean_index     n    sd    se   min   max
# 4       26.7    11  4.51 1.36   21.4  33.9
# 6       19.7     7  1.45 0.549  17.8  21.4
# 8       15.1    14  2.56 0.684  10.4  19.2

library(tidyverse)
data_summary <- function(df, measure, group)  {
  df %>% 
    group_by({{ group }}) %>% 
    summarise(mean_index = mean({{ measure }}),
              n = length({{ measure }}),  sd = sd({{ measure }}), se = sd/sqrt(n),
              min = min({{ measure }}), max = max({{ measure }}))
}