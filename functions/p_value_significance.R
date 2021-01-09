# Title: Is My P Value Significant Function
#
# Tests whether a p value is less than a given significance level or not
# For when you just want to double check when you have a number like 5.426e-06
#
# @param p_value: your calculated value from a statistical test 
# @param significance level: the probability of rejecting the null hypothesis when 
# it is true, e.g. 0.05
#
# @Example
# 
# Creating two data sets:
# df1 <- 1:5
# df2 <- 10:15
# 
# T-test:
# t.test(df1, df2)
#
# Output:
# data:  df1 and df2
# t = -9.1273, df = 8.9894, p-value = 7.672e-06
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -11.854953  -7.145047
# sample estimates:
#   mean of x mean of y 
# 3.0      12.5 
#
# Signficant?
# p_value_significance(7.672e-06, 0.05)
#
# Output:[1] TRUE
# So this is significant
p_value_significance<-function(p_value, signficance_level) {
  tf <- isTRUE(p_value <= signficance_level)
  print(tf)
}