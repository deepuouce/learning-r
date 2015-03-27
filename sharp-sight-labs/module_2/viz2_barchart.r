library(ggplot2)

df.dummy_data <- data.frame(category_var = c("A", "B", "C", "D", "E"),
                            numeric_var = c(5,2,9,4,5))


## BASIC BARCHART SYNTAX
ggplot(data=df.dummy_data, aes(x=category_var, y=numeric_var)) +
  geom_bar(stat="identity") # stat="identity" means that using y axes as the value


## COUNT OF RECORDS
### using san francisco crime data set
ggplot(data=df.sf_crime, aes(x=hour)) +
  geom_bar(stat="bin") # bin is default


## FLIP AXES
### coord_flip()
### diamonds is a built in dataset
ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(stat="bin") # bin is default

ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(stat="bin") +
  coord_flip() # flip x to y

## ADDING COLOR
### can use hexadecimals
### fill=NA make it hollow
ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(size=2, fill="dark blue", color="red", stat="bin") +
  coord_flip() # flip x to y


## ADDING WIDTH
ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(width=.9, stat="bin") +
  coord_flip() # flip x to y
