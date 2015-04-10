## Bar chart
## Position adjustment

library(ggplot2)

head(df.sf_crime)

#################################
# STACK
# - stacked bar chart
# - bars are on top of each other
#################################

r <- ggplot(data=df.sf_crime, aes(x=district, fill=crime_category))

r + geom_bar(position="stack")

# Without position=stack
# defaulted to "stack"

r + geom_bar()

######################
# IDENTITY
# - bars are overlayed
######################

r + geom_bar(position="identity")
r + geom_bar(position="identity", alpha=.3)

###########################################
# DODGE
# - dodged bar chart
# - bars are beside each other
# - useful when fill and x axis is fewer no
###########################################

r + geom_bar(position="dodge")

#################################
# FILL
# - fill whole chart with bars
# - bars are on top of each other
#################################

r + geom_bar(position="fill")

##############
# JITTER
# - kasi point sepah sikit kasi senang tengok
##############

str(df.car_specs)

t <- ggplot(data=df.car_specs, aes(x=horsepower_bhp, y=car_0_60_time_seconds))

t + geom_point(position="jitter", size=3)