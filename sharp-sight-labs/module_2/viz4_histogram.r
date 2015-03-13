library(ggplot2)

set.seed(11)
df.histogram_dummy <- data.frame(x_var = rnorm(2000))

# BASIC HISTOGRAM
ggplot(data=df.histogram_dummy, aes(x=x_var)) +
  geom_histogram()

# WIDER BINWIDTH
## default is range/30
ggplot(data=df.histogram_dummy, aes(x=x_var)) +
  geom_histogram(binwidth=.1)

# ADD COLOR AND BORDER
ggplot(data=df.histogram_dummy, aes(x=x_var)) +
  geom_histogram(color="light gray", fill="red", binwidth=.1)

# MORE EXAMPLES
## using car_specs dataset
ggplot(data=df.car_specs, aes(x=horsepower_bhp)) +
  geom_histogram()

ggplot(data=df.car_specs, aes(x=horsepower_bhp)) +
  geom_histogram(color="light gray", fill="blue")
