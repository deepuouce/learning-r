library(ggplot2)

## DUMMY DATA SET
set.seed(11)
df.test_data <- data.frame(foo = rnorm(50, mean=5, sd=2),
                           bar = rnorm(50, mean=5, sd=1)
)

## BASIC SCATTERPLOT
ggplot(data=df.test_data, aes(x=foo, y=bar)) + # adding a layer
  geom_point(size=6)

## CHANGE SIZE
ggplot(data=df.test_data, aes(x=foo, y=bar)) +
  geom_point(size=7) # set size

## CHANGE COLOR
# useful with multiple layers
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point(color="red", size=6) # set size and color

## HOLLOW POINTS (Point style)
# by default, points are solid
ggplot(data=df.test_data, aes(x=foo, y=bar)) + # adding a layer
  geom_point(shape=2, size=6, color="dark red") # set shapes and sizes

### REGRESSION LINE
###----------------
set.seed(41)
df.test_data <- data.frame(foo = 1:50 + rnorm(50, sd=2),
                           bar = 1:50 + rnorm(50, sd=14))

## BASIC PLOT
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point()

## ADD REGRESSION LINE
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point() +
  geom_smooth(method=lm) # add line, method=linear model

## WITH COLOR
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point(color="purple", size=4) +
  geom_smooth(method=lm, size=1.4)

