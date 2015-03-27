# Basic Visualization Charts with R

In this note, we'll be exploring different charts to use for our data visualization. We are going to explore the 

Charts in this note:
1. Scatterplot
2. Bar chart
3. Line chart
4. Histogram
5. Multiple charts


Import **ggplot2** library:

    library(ggplot2)

## 1. Scatterplot

First, create a dummy data set.

```language-r
set.seed(11)
df.test_data <- data.frame(foo = rnorm(50, mean=5, sd=2),
                           bar = rnorm(50, mean=5, sd=1)
)
```

- Basic scatterplot

```language-r
ggplot(data=df.test_data, aes(x=foo, y=bar)) + # adding a layer
  geom_point()
```

We can change the size, color and the style.

- Size
```language-r
ggplot(data=df.test_data, aes(x=foo, y=bar)) +
  geom_point(size=7) # set size
```

- Change color
```language-r
# useful with multiple layers
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point(color="red", size=6) # set size and color
```

- Change point styling
```language-r
# by default, points are solid
ggplot(data=df.test_data, aes(x=foo, y=bar)) + # adding a layer
  geom_point(shape=2, size=6, color="dark red") # set shapes and sizes
```

#### With regression line

What is [regression line](http://people.duke.edu/~rnau/regintro.htm)?  
Basically, given a bunch of points on a graph, it's a line that define the points.
The distance between those points and the line is called an "error". The further it is, the less-good is your data.

Let's start with recreating our dummy data set:
```language-r
set.seed(41)
df.test_data <- data.frame(foo = 1:50 + rnorm(50, sd=2),
                           bar = 1:50 + rnorm(50, sd=14))
```

- Addin a regression line
```language-r
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point() +
  geom_smooth(method=lm) # add line, method=linear model
```

- With color
```language-r
ggplot(data=df.test_data, aes(x=foo, y=bar)) + 
  geom_point(color="purple", size=4) + # color attr
  geom_smooth(method=lm, size=1.4)
```

## 2. Bar chart

Initialize by creating a data set:
```language-r
df.dummy_data <- data.frame(category_var = c("A", "B", "C", "D", "E"),
                            numeric_var = c(5,2,9,4,5))
```

- Basic bar chart

`stat="bin"` parameter is the default. It will take only one axis in aesthetics as x axis and count as y axis. Useful to count distinctive value.

```language-r
ggplot(data=df.dummy_data, aes(x=numeric_var)) +
  geom_bar(stat="bin") 
```

geom_bar's `stat="identity"` parameter means using y axis as the value against x axis.

```language-r
ggplot(data=df.dummy_data, aes(x=category_var, y=numeric_var)) +
  geom_bar(stat="identity") 
```

- Flip coordinate

```language-r
ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(stat="bin") +
  coord_flip() # flip x to y
```

- Adding colors
Note: can use hexadecimals as the color.  
`fill=NA` make it hollow.

```language-r
ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(size=2, fill="dark blue", color="red", stat="bin") +
  coord_flip() # flip x to y
```

- Adding width
```language-r
ggplot(data=diamonds, aes(x=cut)) +
  geom_bar(width=.9, stat="bin") +
  coord_flip() # flip x to y
```

## 3. Line chart

You know what this is:
```language-r
df.dummy_data <- data.frame(
  dummy_metric <- cumsum(1:20),
  date = seq.Date(as.Date("1980-01-01"), by="1 year", length.out=20))
```

- Basic line chart
```language-r
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line()
```

- Adding layers
We can add layers to our chart to make a multiple visual for our data. In this example, we are adding points points and line together.
```language-r
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line() +
  geom_point()
```

- Adding color and size
```language-r
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line(color="navy", size=2) +
  geom_point(size=3)
```

- Line styles
Change the style of our lines. Here is a list of available styles:
 + Solid
 + Dashed
 + Dotted
 + Dotdash
 + Longdash
 + Twodash
 + Blank

```language-r
ggplot(data=df.dummy_data, aes(x=date, y=dummy_metric)) +
  geom_line(linetype="twodash", size=5)
```

## 4. Histogram

As usual, we're gonna use this dummy data set:
```language-r
set.seed(11)
df.histogram_dummy <- data.frame(x_var = rnorm(2000))
```

- Basic histogram
```language-r
ggplot(data=df.histogram_dummy, aes(x=x_var)) +
  geom_histogram()
```

- Changing width
```language-r
## default is range/30
ggplot(data=df.histogram_dummy, aes(x=x_var)) +
  geom_histogram(binwidth=.1)
```

- Adding color and border
```language-r
ggplot(data=df.histogram_dummy, aes(x=x_var)) +
  geom_histogram(color="light gray", fill="red", binwidth=.1)
```

## 5. Multiple charts

---

Source:

http://www.quora.com/How-would-linear-regression-be-described-and-explained-in-laymans-terms