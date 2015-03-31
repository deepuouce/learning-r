# AKA faceting. trellis chart
# use when multiple chart requirement
# techniques: 
#       - facet grid
#       - facet wrap 

library(ggplot2)

df.facet_data <- read.csv(url("http://www.sharpsightlabs.com/wp-content/uploads/2014/12/facet_dummy_data.csv"))
df.facet_data$month <- factor(df.facet_data$month, levels=month.abb)

ggplot(data=df.facet_data, aes(x=month, y=sales, group=region)) +
  geom_line()

# FACET GRID
ggplot(data=df.facet_data, aes(x=month, y=sales, group=1)) +
  geom_line() + # create one line chart
  facet_grid(region ~ .) # region by nothing

## SF CRIME EXAMPLE
ggplot(data=df.sf_crime, aes(x=crime_category)) +
  geom_bar()

ggplot(data=df.sf_crime, aes(x=crime_category)) +
  geom_bar() +
  facet_grid(DayOfWeek ~ district) # row by column

# FACET WRAP
head(diamonds)

## histogram
ggplot(data=diamonds, aes(x=carat)) +
  geom_histogram()

## facet on "cut"
ggplot(data=diamonds, aes(x=price)) +
  geom_histogram() +
  facet_wrap(~cut)

## faceted scatterplot
ggplot(data=diamonds, aes(x=carat, y=price)) +
  geom_point() +
  facet_wrap(~cut)
  
## more example
ggplot(data=df.car_specs, aes(x=horsepower_bhp, y=top_speed_mph)) +
  geom_point(alpha=.6)

ggplot(data=df.car_specs, aes(x=horsepower_bhp, y=top_speed_mph)) +
  geom_point(alpha=.6) +
  facet_wrap(~decade)

ggplot(data=df.car_specs, aes(x=torque_lb_ft)) +
  geom_histogram(alpha=.6) +
  facet_wrap(~decade)

## summary:
## - point needs both axes
## - histogram may have one axes
## - facet wrap is gridview