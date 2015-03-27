library(ggplot2)

df.dummy_data <- data.frame(
  dummy_metric <- cumsum(1:20),
  date = seq.Date(as.Date("1980-01-01"), by="1 year", length.out=20))

# plot data using line
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line()

## ADDING LAYERS
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line() +
  geom_point()

## ADD COLOR AND SIZE
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line(color="navy", size=2) +
  geom_point(size=3)

## LINE TYPES
### solid
### dashed
### dotted
### dotdash
### longdash
### twodash
### blank

ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line(linetype="longdash", size=5)
