# How to make a bubble chart
# - mapping car to size param

library(ggplot2)

set.seed(53)

# CREATE DATA FRAME (Dummy)
# 1. create 'x_var' as 15 random, normally distributed numbers (using rnorm)
# 2. create 'y_var' "
# 3. create 'size_var' as a random number between 1 and 10
# 4. combine these vars into a single data frame 

foo <- rnorm(n = 15, mean = 5, sd = 2)
bar <- foo + rnorm(n = 15, mean = 5, sd = 4)
size_var <- runif(15, 1, 10)

df.test_data <- data.frame(foo, bar, size_var)

# init plot
r <- ggplot(data=df.test_data, aes(x=foo, y=bar))

r + geom_point(aes(size=size_var))

####################
# ADJUST SIZE OF BUBBLES
####################

r + geom_point(aes(size=size_var))
  + scale_size_continuous(range=c(2,15))
  + theme(legend.position = "none")

###############
# ADD COLOR
###############

r + geom_point(aes(size=size_var), color="dark red")
  + scale_size_continuous(range=c(2,15))
  + theme(legend.position = "none")
